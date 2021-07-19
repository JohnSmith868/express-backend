const roles = ['normal'];

const roleRights = new Map();
roleRights.set(roles[0], ['getMe']);

module.exports = {
  roles,
  roleRights,
};
