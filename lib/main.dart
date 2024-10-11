import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nubank Clone',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white, // Fundo branco para a tela
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0), // Altura da AppBar
        child: AppBar(
          backgroundColor: Color(0xFF8A05BE), // Cor da AppBar
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Color(0xFFB79BC4), // Roxo mais claro
              child: const Icon(Icons.person_outline,
                  color: Colors.white), // Ícone de perfil em branco
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.visibility_outlined,
                  color: Colors.white), // Ícone de visibilidade
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.question_mark_rounded,
                  color: Colors.white), // Ícone de interrogação
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.mark_email_read_outlined,
                  color: Colors.white), // Ícone de carta
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Conta',
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                IconButton(
                  icon:
                      const Icon(Icons.chevron_right, size: 30), // Ícone de ">"
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text('R\$ 1.000,00',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildIconButton(Icons.pix, 'Área Pix'),
                _buildIconButton(Icons.money, 'Pagamentos'),
                _buildIconButton(Icons.qr_code, 'QR Code'),
                _buildIconButton(Icons.attach_money, 'Transferir'),
              ],
            ),
            const SizedBox(height: 30),

            // Botão "Meus Cartões"
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 16.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  side: BorderSide(color: Colors.grey),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.credit_card, color: Colors.black),
                    const SizedBox(width: 8),
                    const Text('Meus Cartões',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),

            // Botão "Guarde seu dinheiro em caixinhas"
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 16.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  side: BorderSide(color: Colors.grey),
                ),
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Guarde seu dinheiro em caixinhas',
                      style: TextStyle(color: Color(0xFF8A05BE)),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Acessando a área de planejamento.',
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ),
            ),

            const Divider(thickness: 1, color: Colors.grey), // Divisória

            // Cartão de Crédito
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Cartão de Crédito', style: TextStyle(fontSize: 24)),
                IconButton(
                  icon: const Icon(Icons.chevron_right, size: 30),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text('Fatura Fechada',
                style: TextStyle(color: Colors.black54, fontSize: 18)),
            const SizedBox(height: 10),
            const Text('R\$ 2.123,39', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 15),
            const Text('Vencimento: dia 15',
                style: TextStyle(color: Colors.black54, fontSize: 18)),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Renegociar',
                style: TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(height: 20),
            const Divider(thickness: 1, color: Colors.grey), // Divisão

            // Empréstimo
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Empréstimo', style: TextStyle(fontSize: 24)),
                IconButton(
                  icon: const Icon(Icons.chevron_right, size: 30),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text('Tudo certo! Você está em dia',
                style: TextStyle(fontSize: 18)),
            const SizedBox(height: 30),
            const Divider(thickness: 1, color: Colors.grey), // Divisão

            // Descubra Mais
            const Text('Descubra Mais', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 10),

            // Card para a seção "Descubra Mais"
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(16.0),
                  bottom: Radius.circular(16.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0),
                    ),
                    child: Image.asset(
                      'assets/seguroVida.png',
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Seguro de Vida',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold)),
                        SizedBox(height: 5),
                        Text(
                          'Cuide bem de quem você ama de um jeito simples',
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Botão "Conhecer" dentro do card
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF8A05BE),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Conhecer',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _buildIconButton(IconData icon, String label) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color(0xFFE0BBE4),
            shape: BoxShape.circle,
          ),
          padding: const EdgeInsets.all(12.0),
          child: Icon(icon, color: Colors.black),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(color: Colors.black)),
      ],
    );
  }
}
