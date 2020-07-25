//로그인 전략 구현
const LocalStrategy = require('passport-local').Strategy;
const bcrypt = require('bcrypt');

const { User } = require('../models/index.js');

module.exports = (passport) => {
  passport.use(new LocalStrategy({//1st 설정 인자
    usernameField: 'userId',
    passwordField: 'password',
  }, async (userId, password, done) => {//2st 실제 전략 수행 인자
    try {
      const exUser = await User.findOne({ where: { u_userId: userId } });//find -> findOn
      if (exUser) {
        const result = await bcrypt.compare(password, exUser.u_password);//해싱된 코드를 비교하여 같으면 true 아니면 false를 반환
        if (result) {
          done(null, exUser);
        } else {
          done(null, false, { message: '비밀번호가 일치하지 않습니다.' });
        }
      } else {
        done(null, false, { message: '가입되지 않은 회원입니다.' });
      }
    } catch (error) {
      console.error(error);
      done(error);
    }
  }));
};