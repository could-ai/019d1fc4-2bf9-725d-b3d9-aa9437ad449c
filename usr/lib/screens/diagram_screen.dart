import 'package:flutter/material.dart';

class DiagramScreen extends StatelessWidget {
  const DiagramScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Li-Fi Block Diagram'),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'System Architecture Block Diagram',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            const Text(
              'This diagram illustrates the flow of data from the internet source, through the light medium, to the end-user device.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black54),
            ),
            const SizedBox(height: 32),
            
            // Diagram Container
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey.shade50,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Column(
                children: [
                  _buildBlock(context, 'Internet / Network', Icons.cloud, Colors.blue),
                  _buildArrow(),
                  _buildBlock(context, 'Streaming Content / Server', Icons.dns, Colors.blueGrey),
                  _buildArrow(),
                  
                  // Transmitter Section
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.orange, width: 2),
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.orange.shade50,
                    ),
                    child: Column(
                      children: [
                        const Text('TRANSMITTER', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange)),
                        const SizedBox(height: 12),
                        _buildBlock(context, 'LED Driver / Modulator', Icons.memory, Colors.orange),
                        _buildArrow(),
                        _buildBlock(context, 'LED Lamp (Light Source)', Icons.lightbulb, Colors.amber),
                      ],
                    ),
                  ),
                  
                  // Transmission Medium
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Column(
                      children: [
                        const Icon(Icons.waves, color: Colors.amber, size: 40),
                        const Text('Visible Light Waves (Free Space)', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.amber)),
                        const Icon(Icons.arrow_downward, color: Colors.amber, size: 30),
                      ],
                    ),
                  ),
                  
                  // Receiver Section
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green, width: 2),
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.green.shade50,
                    ),
                    child: Column(
                      children: [
                        const Text('RECEIVER', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green)),
                        const SizedBox(height: 12),
                        _buildBlock(context, 'Photo Detector (Photodiode)', Icons.sensors, Colors.green),
                        _buildArrow(),
                        _buildBlock(context, 'Amplification & Processing', Icons.graphic_eq, Colors.teal),
                      ],
                    ),
                  ),
                  
                  _buildArrow(),
                  _buildBlock(context, 'End Device (PC / Mobile)', Icons.laptop_mac, Colors.indigo),
                ],
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildBlock(BuildContext context, String title, IconData icon, Color color) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
        border: Border.all(color: color.withOpacity(0.5)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          const SizedBox(width: 12),
          Flexible(
            child: Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildArrow() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Icon(Icons.arrow_downward, color: Colors.grey, size: 30),
    );
  }
}
