const express = require('express');
const app = express(); 
const PORT = 3000; 

app.get('/', (req, res) => { 
res.send('🚀 Aplicação rodando com sucesso dentro de um Container Docker!'); 
}); 

app.listen(PORT, () => {
console.log(\`Servidor rodando na porta ${PORT}\`); 
});
