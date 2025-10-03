# Bot Verificador de Citas de Extranjería - Castellón

## 🎯 Propósito
Ayuda social para detectar disponibilidad de citas en extranjería de Castellón, combatiendo las mafias que revenden citas públicas gratuitas.

## ⚖️ Legalidad
- ✅ SOLO verifica disponibilidad
- ✅ Ayuda social legítima  
- ❌ NO reserva citas automáticamente
- ❌ NO acapara citas

## 🚀 Ejecución Rápida
```bash
./ejecutar_bot.sh
```

## 📁 Estructura del Proyecto
```
CitasExtranjeriaBot/
├── src/citas_bot.py      # Código principal
├── requirements.txt      # Dependencias
├── ejecutar_bot.sh       # Script de ejecución
├── logs/                 # Archivos de log
├── data/                 # Resultados CSV
└── config/               # Configuraciones
```

## 🔧 Instalación Manual
1. `python3 -m venv venv`
2. `source venv/bin/activate` 
3. `pip install -r requirements.txt`
4. `python src/bot_citas_extranjeria.py`

## 📞 Uso
- Opción 1: Verificación única
- Opción 2: Monitor continuo (30 min)
- Opción 3: Monitor nocturno
- Opción 4: Configurar emails
