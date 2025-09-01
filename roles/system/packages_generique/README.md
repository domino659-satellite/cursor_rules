# Generic Packages Role

Installs system packages with robust error handling and multi-distribution compatibility.

## 🎯 Features

- **Individual installation**: Each package installed separately
- **Failure tolerance**: Failed packages don't stop others
- **Smart logging**: Success, failures, ignored packages
- **Failure threshold**: Fails if >50% packages fail

## 📊 Output

- ✅ Success count
- ❌ Failure count  
- ⏭️ Ignored count
- ℹ️ Already present count
- Role fails if >50% packages fail
