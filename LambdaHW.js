exports.handler = async (event) => {
  const name = event.name || 'World';
  const message = `Hello, ${name}!`;
  return { message };
};
