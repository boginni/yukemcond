import 'package:flutter/material.dart';
import 'package:yukem_dashboard/yukem_cond/screens/tela_votacao_online/moddels/votacao.dart';
import 'package:yukem_dashboard/yukem_cond/screens/tela_votacao_online/tela_votacao_aberta.dart';
import 'package:yukem_dashboard/yukem_cond/screens/tela_votacao_online/tela_votacao_fechada.dart';

import '../../../app_foundation.dart';

class TileVotacao extends StatelessWidget {
  const TileVotacao({Key? key, required this.item}) : super(key: key);

  final Votacao item;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 15,
          ),
        ],
      ),
      child: InkWell(
        onTap: () {
          Application.navigate(
              context,
              item.aberto
                  ? TelaVotacaoAberta(item: item)
                  : TelaVotacaoFechada(item: item));
        },
        child: Card(
          color: Colors.white,
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.titulo,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 15),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  height: 1,
                  thickness: 0.2,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Text(
                          "Criado por: ",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        Text(
                          item.autor,
                          style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          "Status: ",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        Text(
                          item.getStatus(),
                          style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
