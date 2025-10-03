# 🛡️ Guía de Seguridad y Mejores Prácticas
## Bot Verificador de Citas de Extranjería

### 🚨 ADVERTENCIAS IMPORTANTES

**ANTES DE USAR ESTE SCRIPT, LEE ATENTAMENTE:**

1. **Este script es SOLO para verificación**, nunca para reservar citas automáticamente
2. **Úsalo únicamente con fines de ayuda social legítima**
3. **Respeta siempre los límites éticos implementados**
4. **No ejecutes múltiples instancias simultáneamente**
5. **Las reservas SIEMPRE deben hacerse manualmente**

### 🔒 Configuración de Seguridad

**CONTRASEÑAS DE EMAIL:**
- Si usas Gmail, genera una "Contraseña de Aplicación"
- Nunca uses tu contraseña principal de Google
- Ruta: Google Account → Seguridad → Verificación en 2 pasos → Contraseñas de aplicación

**PROTECCIÓN DE DATOS:**
- El script usa datos de prueba ficticios para testing
- Cambia los datos de prueba por otros ficticios si es necesario
- Nunca hardcodees datos reales en el script

### ⚖️ Cumplimiento Legal

**ACTIVIDADES PERMITIDAS:**
- ✅ Verificar disponibilidad de servicios públicos
- ✅ Automatizar consultas de información pública  
- ✅ Ayudar a personas en situación desfavorable
- ✅ Detectar cuando hay citas disponibles

**ACTIVIDADES PROHIBIDAS:**
- ❌ Reservar citas automáticamente
- ❌ Acaparar múltiples citas
- ❌ Revender citas públicas gratuitas
- ❌ Sobrecargar servidores del estado
- ❌ Uso comercial del script

### 📊 Monitoreo y Límites

**INTERVALOS RECOMENDADOS:**
- **Horario diurno (9:00-17:00):** Cada 45-60 minutos
- **Horario nocturno (21:00-7:00):** Cada 30-45 minutos
- **Máximo por sesión:** 20 verificaciones
- **Pausa mínima entre requests:** 5 segundos

**SEÑALES DE ALERTA:**
- Códigos de error 403 (Prohibido) → Reducir frecuencia
- Códigos de error 429 (Too Many Requests) → Parar temporalmente
- Códigos de error 503 (Service Unavailable) → Sistema en mantenimiento

### 🔧 Configuración Técnica

**REQUISITOS DEL SISTEMA:**
```bash
# Python 3.7 o superior
python --version

# Instalar dependencias
pip install requests

# Verificar conectividad
ping icp.administracionelectronica.gob.es
```

**CONFIGURACIÓN DE RED:**
- Usa tu conexión de internet normal (no VPN para múltiples IPs)
- No uses proxies rotativos 
- Mantén una dirección IP consistente

### 📁 Estructura de Archivos

**ARCHIVOS GENERADOS:**
```
bot_citas_extranjeria.py          # Script principal
citas_extranjeria.log             # Log de operaciones  
resultados_citas.csv              # Historial de resultados
🚨_CITAS_DISPONIBLES.txt          # Alerta local (solo si hay citas)
documentacion-completa.md         # Documentación
```

**MANTENIMIENTO:**
- Revisar logs semanalmente
- Limpiar CSVs antiguos mensualmente  
- Actualizar User-Agent cada 3 meses
- Verificar URLs del sistema oficial

### 🚀 Guía de Ejecución Paso a Paso

**1. PRIMERA EJECUCIÓN:**
```bash
# Descargar o copiar el script
# Ejecutar en terminal
python bot_citas_extranjeria.py

# Seleccionar opción 1 para prueba inicial
# Revisar que se creen los archivos de log
```

**2. CONFIGURAR NOTIFICACIONES (OPCIONAL):**
```bash
# En el menú, seleccionar opción 4
# Introducir datos de email:
#   Gmail: smtp.gmail.com, puerto 587
#   Outlook: smtp-mail.outlook.com, puerto 587
#   Yahoo: smtp.mail.yahoo.com, puerto 587
```

**3. USO REGULAR:**
```bash
# Para verificación única: Opción 1
# Para monitor diurno: Opción 2  
# Para monitor nocturno: Opción 3
```

### 📞 Procedimiento de Emergencia

**SI SE DETECTAN CITAS DISPONIBLES:**

1. **ACCIÓN INMEDIATA:**
   - Se creará archivo `🚨_CITAS_DISPONIBLES.txt`
   - Recibirás email (si configurado)
   - Aparecerá alerta en pantalla

2. **PASOS A SEGUIR:**
   - Ir INMEDIATAMENTE a: https://sede.administracionespublicas.gob.es/pagina/index/directorio/icpplus
   - Seguir proceso manual completo
   - NO usar bots para reservar
   - Actuar rápidamente (las citas se agotan en minutos)

3. **DESPUÉS DE RESERVAR:**
   - Parar el bot (ya cumplió su propósito)
   - Informar a las personas que ayudas
   - Documentar el éxito para mejoras futuras

### 🛠️ Solución de Problemas

**ERRORES COMUNES:**

**Error de conexión:**
```bash
# Verificar conectividad
ping google.com
ping icp.administracionelectronica.gob.es

# Verificar que no haya firewall bloqueando
```

**Error de email:**
```bash
# Para Gmail, verificar:
# 1. Verificación en 2 pasos activada
# 2. Contraseña de aplicación generada
# 3. Datos correctos en configuración
```

**Falsos positivos:**
```bash
# Si detecta citas pero no las hay:
# 1. Revisar logs detalladamente
# 2. El sistema puede haber cambiado
# 3. Reportar el problema
```

### 🔄 Actualizaciones y Mantenimiento

**MANTENIMIENTO SEMANAL:**
```bash
# Revisar logs
tail -20 citas_extranjeria.log

# Verificar tamaño de archivos
ls -lh resultados_citas.csv

# Probar conectividad
python -c "import requests; print(requests.get('https://icp.administracionelectronica.gob.es/icpplus/index.html').status_code)"
```

**ACTUALIZACIONES TRIMESTRALES:**
- Actualizar User-Agent en el código
- Verificar que las URLs sigan funcionando
- Revisar cambios en el sistema oficial
- Actualizar documentación si es necesario

### 📋 Lista de Verificación Pre-Uso

**ANTES DE EJECUTAR:**
- [ ] Python 3.7+ instalado
- [ ] Librería `requests` instalada  
- [ ] Conexión a internet estable
- [ ] Propósito de ayuda social confirmado
- [ ] Documentación leída y entendida
- [ ] Límites éticos comprendidos

**CONFIGURACIÓN OPCIONAL:**
- [ ] Email configurado para notificaciones
- [ ] Intervalos ajustados según necesidad
- [ ] Archivos de log configurados
- [ ] Sistema de alertas probado

### 📞 Contacto y Soporte

**PARA PROBLEMAS TÉCNICOS:**
1. Revisar logs detalladamente
2. Verificar configuración de red
3. Comprobar cambios en sistema oficial
4. Consultar documentación completa

**PARA MEJORAS:**
- El script es de código abierto
- Las mejoras deben mantener el propósito ético
- Cualquier modificación debe respetar los límites legales

---

**⚠️ DESCARGO DE RESPONSABILIDAD FINAL:**

Este script se proporciona para fines de ayuda social únicamente. Los usuarios son completamente responsables de su uso ético y legal. El desarrollador no se hace responsable de un mal uso del script o violaciones de términos de servicio.

**RECUERDA:** El propósito es ayudar a personas desfavorecidas, no obtener beneficios comerciales.

---

**📅 Fecha:** Septiembre 2024  
**🔄 Versión:** 1.0  
**👥 Propósito:** Ayuda social contra mafias de citas
