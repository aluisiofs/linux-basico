# Semana 6 – Monitoramento e Logs (Base)

Este repositório contém a entrega prática dos conceitos de **Monitoramento e Observabilidade** aplicados na Trilha DevOps Junior NTT Data.

---

## 📌 Diferenças entre Logs e Métricas

| Conceito | O que é? | Exemplo | Função no DevOps |
| :--- | :--- | :--- | :--- |
| **Logs** | Registros de eventos individuais e com contexto detalhado. | `{"level": "ERROR", "message": "Timeout no banco"}` | Diagnóstico profundo e identificação da causa-raiz de falhas. |
| **Métricas** | Dados numéricos agregados em séries temporais. | `CPU: 85%`, `Latência: 120ms`, `Erros/sec: 12` | Alertas proativos e acompanhamento da saúde em tempo real. |

---

## 🔍 Importância da Observabilidade

Sem monitoramento, o tempo médio de resolução (MTTR) de incidentes aumenta drasticamente, pois problemas passam a ser notificados apenas pelos usuários [2, 3].

A observabilidade estruturada permite:

1. **Antecipação de Incidentes:** detectar gargalos de hardware ou rede antes da queda do serviço [2, 4].
2. **Resolução Rápida de Erros:** filtrar logs em formato JSON estruturado por atributos específicos como `service` e `timestamp` [2, 4].
