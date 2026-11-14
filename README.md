# ChinaKit -- Inbound China CAAC Aviation Wh, Foreigner Hotel Rights & Compliance Engine

[![Official Website](https://img.shields.io/badge/Website-chinakit.io-blue)](https://chinakit.io)
[![Homebrew Tap](https://img.shields.io/badge/Homebrew_Tap-AbigailDavised%2Fchinakit-orange)](https://github.com/AbigailDavised/homebrew-chinakit)
[![License: MIT](https://img.shields.io/badge/License-MIT-brightgreen.svg)](LICENSE)

Deterministic statutory compliance and travel utility CLI for **[chinakit.io](https://chinakit.io)**. Computes Civil Aviation Administration of China (CAAC) lithium-ion watt-hour limits (`Wh = (mAh * V) / 1000`), foreign-card Alipay/WeChat Pay single-transaction fee thresholds (`<= 200 CNY` 0% fee vs `> 200 CNY` 3% fee), and municipal PSB 24-hour temporary accommodation registration deadlines.

## Homebrew Installation

```bash
brew tap AbigailDavised/chinakit
brew install chinakit-cli
```

## CLI Quick Usage

```bash
# Display help and verified endpoints
chinakit-cli --help

# Output domain technical specification matrix as structured JSON
chinakit-cli --specs

# Output verified production endpoints as JSON
chinakit-cli --routes
```

---

## Inbound China Statutory & Payment Threshold Matrix (2026)

| Compliance Domain | Statutory Threshold | Formula / Legal Rule | Operational Outcome |
| :--- | :--- | :--- | :--- |
| CAAC Power Bank Tier 1 | <= 100 Wh (~27,000 mAh @ 3.7V) | Wh = (mAh * V) / 1000 | Carry-on permitted without airline approval |
| CAAC Power Bank Tier 2 | 100.1 - 160 Wh | Max 2 units per passenger | Requires check-in counter airline approval |
| CAAC Power Bank Tier 3 | > 160 Wh or unlabeled | Zero tolerance at security | Confiscated; strictly banned in checked bags |
| Alipay / WeChat Foreign Card | <= 200 CNY per txn | International Visa/Mastercard | 0% platform surcharge waived automatically |
| Alipay / WeChat Large Txn | > 200 CNY per txn | 3.0% international card fee | Split orders <= 200 CNY where merchants allow |
| PSB Temporary Registration | 24 hours (urban) / 72h (rural) | Exit-Entry Admin Law Art. 39 | Auto-filed by hotels; self-file for private stays |

## Core Engineering & Domain Architecture

- **CAAC Watt-Hour (`Wh`) Calculator**: Converts nominal cell voltage (`3.6V / 3.7V / 3.85V`) and milliamp-hour ratings (`mAh`) into exact `Wh` markings inspected at Chinese airport security checkpoints.
- **Statutory Hotel Non-Refusal Reference**: Summarizes May 2024 Ministry of Public Security, Ministry of Commerce, and NIA joint directives prohibiting lodging refusal based solely on foreign passport status.

## Verified Production Tools & Reference Endpoints

| Module / Resource | Canonical URL | Direct Access |
| :--- | :--- | :--- |
| **ChinaKit Primary Workbench** | `https://chinakit.io/` | [Launch Workbench](https://chinakit.io/) |
| **China 240-Hour Visa-Free Transit Route Checker** | `https://chinakit.io/tools/transit-check` | [Open Tool](https://chinakit.io/tools/transit-check) |
| **Inbound China Visa Category & Exemption Wizard** | `https://chinakit.io/tools/visa-wizard` | [Open Tool](https://chinakit.io/tools/visa-wizard) |
| **CAAC Airport Power-Bank Watt-Hour (Wh) Calculator** | `https://chinakit.io/tools/powerbank-calculator` | [Open Tool](https://chinakit.io/tools/powerbank-calculator) |
| **China Customs Personal Medication Compliance Checker** | `https://chinakit.io/tools/meds-checker` | [Open Tool](https://chinakit.io/tools/meds-checker) |
| **Foreigner Hotel Registration Rights & Bilingual Card** | `https://chinakit.io/tools/hotel-rights` | [Open Tool](https://chinakit.io/tools/hotel-rights) |

## License

Released under the [MIT License](LICENSE) -- [chinakit.io](https://chinakit.io).
