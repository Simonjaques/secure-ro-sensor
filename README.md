# Secure 21-Stage Ring Oscillator Sensor

A hardware security design implementing a 21-stage NOR-based Ring Oscillator (RO) written in Verilog. This project is built, simulated, and verified using open-source EDA tools on Ubuntu Linux.

---

##  Key Highlights & Novelty

> *This section reserves space for project innovations, custom modifications, and hardware security enhancements.*

* **21-Stage NOR Topology:** Provides balanced loop delay and oscillation stability.
* **Side-by-Side In-Line Documentation:** Clean, heavily annotated Verilog RTL designed for collaborative hardware design teams.
* **[TBD / Future Novelty]:** *Add your unique security techniques, physical uncloneable function (PUF) metrics, or sensor features here.*

---

##  Repository Structure

secure-ro-sensor/
├── rtl/
│   └── secure_ro_21stage.v    # 21-stage NOR ring oscillator hardware description
├── testbench/
│   └── tb_secure_ro.v         # Automated loop-based testbench
└── README.md                  # Project overview and documentation


---

##  Tools & Prerequisites

* **OS:** Ubuntu Linux
* **Simulator:** Icarus Verilog (`iverilog`)
* **Waveform Viewer:** GTKWave

---

##  Simulation Quickstart

1. **Clone the repository:**
   ```bash
   git clone [https://github.com/Simonjaques/secure-ro-sensor.git](https://github.com/Simonjaques/secure-ro-sensor.git)
   cd secure-ro-sensor
Compile RTL & Testbench:

Bash
iverilog -o ro_sim.out rtl/secure_ro_21stage.v testbench/tb_secure_ro.v
Execute Simulation:

Bash
vvp ro_sim.out
Inspect Waveforms:

Bash
gtkwave dump.vcd

---

### How to Update It in Terminal

<Steps>
  <Step subtitle="Terminal command" title="Open README in nano">
    Open the file in your terminal:
    ```bash
    nano README.md
    ```
    *Verification:* The `nano` screen will open with your editor prompt.
  </Step>
  <Step subtitle="Ctrl + Shift + V" title="Paste and Save">
    1. Select and copy the Markdown block above.
    2. In `nano`, press **`Ctrl + Shift + V`** to paste it.
    3. Press **`Ctrl + O`**, hit **`Enter`** to confirm saving, then press **`Ctrl + X`** to exit.
    *Verification:* Terminal prompt returns without any error messages.
  </Step>
  <Step subtitle="Git commands" title="Push to GitHub">
    Push the updated file to your remote repository:
    ```bash
    git add README.md
    git commit -m "Update README with dedicated novelty section"
    git push origin main
    ```
    *Verification:* Terminal prints `Everything up-to-date` or lists the successfully written objects.
  </Step>
</Steps>

<ElicitationsGroup message="If you run into any issues while saving or pushing:">
  <Elicitation label="Need help with nano" query="I am stuck in nano and can't save the file properly. What should I press?"/>
  <Elicitation label="Git push asking for token" query="Git is asking for my password again. How do I paste my GitHub token?"/>
  <Elicitation label="Run Icarus simulation" query="How do I compile and run the Icarus Verilog simulation for my ring oscillator?"/>
</ElicitationsGroup>
