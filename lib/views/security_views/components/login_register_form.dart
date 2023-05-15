import 'package:flutter/material.dart';

class LoginRegisterForm extends StatelessWidget {
  const LoginRegisterForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(
              tabs: [
                Tab(child: Text("Login")),
                Tab(child: Text("Register")),
              ],
            ),
            Expanded(
              child: TabBarView(children: [
                Center(child: LoginForm()),
                Center(child: RegisterForm()),
              ]),
            )
          ],
        ));
  }
}

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              //cursorColor: kPrimaryColor,
              onSaved: (email) {},
              decoration: InputDecoration(
                hintText: "Your email",
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Icon(Icons.person),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: TextFormField(
                textInputAction: TextInputAction.done,
                obscureText: true,
                //cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                  hintText: "Your password",
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Icon(Icons.lock),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: TextFormField(
                textInputAction: TextInputAction.done,
                //cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                  hintText: "Name",
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Icon(Icons.lock),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: TextFormField(
                textInputAction: TextInputAction.done,
                //cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                  hintText: "Surname",
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Icon(Icons.lock),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Register".toUpperCase(),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              //cursorColor: kPrimaryColor,
              onSaved: (email) {},
              decoration: InputDecoration(
                hintText: "Your email",
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Icon(Icons.person),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: TextFormField(
                textInputAction: TextInputAction.done,
                obscureText: true,
                //cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                  hintText: "Your password",
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Icon(Icons.lock),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Login".toUpperCase(),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
