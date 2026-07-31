import 'package:flutter/material.dart';
import 'package:primeiro_app/paginas/cadastro.dart';
import 'package:primeiro_app/paginas/dashboard.dart';

import '../utilitarios/tipografia.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final  emailController = TextEditingController();
  final  senhaController = TextEditingController();

  void fazerLogin() {
    if (emailController.text!= "teste@gmail.com" || senhaController.text!= "123456"){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text( "Email/ou senhas estão inválidos!")));
      return;
    }
    Navigator.push(context, MaterialPageRoute(builder: (builder) => Dashboard()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  FlutterLogo(size: 18),
                  const SizedBox(width: 8),
                  Text("ChatSENAC"),
                ],
              ),
              const SizedBox(height: 32),

              Text("Entre na sua conta", style: Tipografia.h1),
              const SizedBox(height: 12),

              Text(
                "Coloque o seu email e senha para logar",
                style: Tipografia.subtitulo,
              ),
              const SizedBox(height: 32),

              Text("Email"),
              const SizedBox(height: 4),

              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "exemplo@gmail.com",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                ),
              ),

              const SizedBox(height: 16),

              Text("Senha"),
              const SizedBox(height: 4),

              TextField(
                controller: senhaController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "••••••••",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffixIcon: Icon(Icons.visibility_off),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                ),
              ),

              const SizedBox(height: 12),

              InkWell(
                child: Text(
                  "Esqueceu a senha?",
                  style: Tipografia.link,
                  textAlign: TextAlign.right,
                ),
              ),

              const SizedBox(height: 24),

              SizedBox(
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    if (emailController.text == "teste@gmail.com" &&
                        senhaController.text == "123456") {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Dashboard(),
                        ),
                            (route) => false,
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Usuário ou senha inválidos"),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    "Entrar",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              const Text(
                "ou",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),

              const SizedBox(height: 16),

              SizedBox(
                height: 48,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    side: const BorderSide(color: Colors.grey),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 10,
                    children: [
                      Image.asset(
                        "assets/imagens/google-icon.png",
                        height: 18,
                      ),
                      Text(
                        "Continuar com o Google",
                        style: Tipografia.subtitulo,
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 12),

              SizedBox(
                height: 48,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    side: const BorderSide(color: Colors.grey),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 10,
                    children: [
                      Image.asset(
                        "assets/imagens/facebook-icon.png",
                        height: 18,
                      ),
                      Text(
                        "Continuar com o Facebook",
                        style: Tipografia.subtitulo,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 54),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Não tem uma conta? "),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (build) => Cadastro(),
                        ),
                      );
                    },
                    child: Text(
                      "Cadastre-se",
                      style: Tipografia.link,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}