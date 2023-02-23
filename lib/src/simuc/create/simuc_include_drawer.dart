import 'package:coocree_select_simuc/package.dart';
import 'package:flutter/services.dart';

class SimucIncludeDrawer extends StatefulWidget {
  const SimucIncludeDrawer({super.key});

  @override
  State<SimucIncludeDrawer> createState() => _SimucIncludeDrawerState();
}

class _SimucIncludeDrawerState extends State<SimucIncludeDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: ListView(
            children: [
              SimconSelectIncludeType(
                label: 'Selecione o Documento',
                simcons: [
                  MenuItemConfig(label: "Danfe", value: "Simuc"),
                  MenuItemConfig(label: "Carta", value: "Simcon"),
                  MenuItemConfig(label: "Guia de Remessa", value: "Luminária"),
                  MenuItemConfig(label: "Outros", value: "Cachorro"),
                ],
                onSelected: (value, type) {
                  print("AAA-->> $value ---> $type");
                },
              ),
              KdlTextField(
                label: Text('Número do Documento',
                    style: TextStyle(color: Colors.black, fontSize: 25)),
              ),
              SimconSelectIncludeType(
                label: 'Tipo de Componente',
                simcons: [
                  MenuItemConfig(label: "Simuc", value: "Simuc"),
                  MenuItemConfig(label: "Simcon", value: "Simcon"),
                  MenuItemConfig(label: "Luminária", value: "Luminária"),
                ],
                onSelected: (value, type) {
                  print("AAA-->> $value ---> $type");
                },
              ),
              KdlTextField(
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(10),
                ],
                label: Text('Número do Componente',
                    style: TextStyle(color: Colors.black, fontSize: 25)),
              ),
              SimconSelectIncludeType(
                label: 'Defeito Aparente',
                simcons: [
                  MenuItemConfig(
                      label: "Peça Inteira Sem Defeito", value: "SemDefeito"),
                  MenuItemConfig(
                      label: "Peça Inteira Defeito Interno",
                      value: "DefeitoInterno"),
                  MenuItemConfig(
                      label: "Peça Carbonizada", value: "Carbonizada"),
                  MenuItemConfig(
                      label: "Peça Apresenta Queimado nos Contatos",
                      value: "QueimadoContatos"),
                  MenuItemConfig(
                      label: "Apresenta Copo Avariado", value: "CopoAvariado"),
                  MenuItemConfig(
                      label: "Partes Soltas Dentro do Copo",
                      value: "PartesSoltas"),
                  MenuItemConfig(
                      label: "Sem Recuperação", value: "SemRecuperacao"),
                ],
                onSelected: (value, type) {
                  print("AAA-->> $value ---> $type");
                },
              ),
              KdlTextField(
                label: Text('Observações',
                    style: TextStyle(color: Colors.black, fontSize: 25)),
              ),
              Container(
                width: 400,
                height: 45,
                child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.orange[800],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    onPressed: () {},
                    child: const Text(
                      'CONFIRMAR',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class DrawerInclude extends StatelessWidget {
  const DrawerInclude({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 350,
      child: SimucIncludeDrawer(),
    );
  }
}



