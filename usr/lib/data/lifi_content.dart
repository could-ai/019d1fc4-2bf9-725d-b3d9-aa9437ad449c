class LiFiSection {
  final String id;
  final String title;
  final String content;

  LiFiSection({required this.id, required this.title, required this.content});
}

final List<LiFiSection> lifiChapters = [
  LiFiSection(
    id: '1',
    title: '1. Abstract & Introduction',
    content: '''
Abstract:
Light Fidelity (Li-Fi) is a groundbreaking visible light communication (VLC) system that runs wireless communications traveling at very high speeds. Li-Fi uses common household LED (light emitting diodes) lightbulbs to enable data transfer, boasting speeds of up to 224 gigabits per second. This report explores the architecture, working principles, and future scope of Li-Fi technology.

Introduction:
The term "Li-Fi" was coined by Professor Harald Haas during his 2011 TED Global talk. As the world becomes increasingly dependent on the internet, traditional Wi-Fi (which uses radio frequency) is facing a spectrum crisis. The radio frequency spectrum is heavily congested, leading to slower speeds and dropped connections. 

Li-Fi offers a solution by utilizing the visible light spectrum, which is 10,000 times larger than the entire radio frequency spectrum. By modulating the light from an LED bulb at extreme speeds (imperceptible to the human eye), data can be transmitted securely, efficiently, and at unprecedented speeds.
''',
  ),
  LiFiSection(
    id: '2',
    title: '2. Working Principle',
    content: '''
How Li-Fi Works:
The core principle of Li-Fi involves transmitting data through the rapid illumination of LED bulbs. 

1. Data Input: Digital data is fed into an LED driver.
2. Modulation: The LED driver modulates the LED light at extremely high speeds. If the LED is ON, a digital '1' is transmitted. If it is OFF, a digital '0' is transmitted.
3. Transmission: The LED bulbs flicker millions of times per second. This flickering is so fast that the human eye perceives it as a constant, steady light.
4. Reception: A photo-detector (receiver) catches these microscopic changes in light amplitude.
5. Demodulation: The receiver converts the light signals back into an electrical signal, which is then processed into the original digital data stream (video, audio, text, etc.) for the end-user device.

Because light cannot penetrate walls, the signal is confined to the room where the light is shining, inherently providing a highly secure communication channel.
''',
  ),
  LiFiSection(
    id: '3',
    title: '3. Architecture & Components',
    content: '''
A standard Li-Fi architecture consists of two main components:

1. Transmitter (The Light Source):
Usually, a high-brightness white LED acts as the communication source. LEDs are chosen because they can be switched on and off very rapidly. The transmitter section includes:
- A Power Supply
- A Microcontroller / Data Processing Unit
- An LED Driver Circuit
- The LED Bulb

2. Receiver (The End Device):
The receiver is typically a silicon photodiode connected to the user's device (laptop, smartphone, etc.). The receiver section includes:
- A Photodetector (Photodiode)
- An Amplification Circuit
- Signal Processing / Demodulation Unit
- The End-User Interface

(Note: View the Block Diagram section in the app for a visual representation of this architecture).
''',
  ),
  LiFiSection(
    id: '4',
    title: '4. Li-Fi vs Wi-Fi',
    content: '''
While both technologies provide wireless data transmission, their mediums and characteristics differ significantly:

1. Spectrum:
- Wi-Fi: Uses Radio Frequency (RF) spectrum (2.4 GHz, 5 GHz).
- Li-Fi: Uses Visible Light spectrum (400 THz to 800 THz), which is 10,000 times broader.

2. Speed:
- Wi-Fi: Typically up to 1-2 Gbps (Wi-Fi 6).
- Li-Fi: Tested up to 224 Gbps in lab environments.

3. Security:
- Wi-Fi: RF signals penetrate walls, making them vulnerable to interception from outside.
- Li-Fi: Light cannot pass through opaque obstacles. Data is strictly confined to the illuminated area, making it highly secure.

4. Interference:
- Wi-Fi: Prone to interference from other RF devices, microwaves, and neighboring networks.
- Li-Fi: Immune to RF interference. Can be used in RF-restricted areas like airplanes, hospitals, and nuclear plants.
''',
  ),
  LiFiSection(
    id: '5',
    title: '5. Advantages & Limitations',
    content: '''
Advantages:
- Efficiency: Uses existing LED lighting infrastructure, saving energy and costs.
- High Speed: Massive bandwidth allows for ultra-fast data transmission.
- Security: Line-of-sight requirement prevents unauthorized access through walls.
- Availability: Wherever there is a light source, there can be internet.
- Safety: No health hazards associated with radio waves; safe for hospitals and underwater use.

Limitations:
- Range: Limited to the illumination area of the light source (typically ~10 meters).
- Obstructions: Opaque objects blocking the light will disrupt the signal.
- Light Dependency: The light must remain ON (even if dimmed below human visibility) to transmit data.
- Outdoor Interference: Direct sunlight can interfere with the photodetector's ability to read the LED signals.
''',
  ),
  LiFiSection(
    id: '6',
    title: '6. Applications & Future Scope',
    content: '''
Applications:
1. Hospitals: Safe to use in operating rooms and around MRI machines where RF signals are prohibited.
2. Aviation: Can provide high-speed internet to passengers using overhead reading lights without interfering with aircraft navigation systems.
3. Underwater Communication: RF waves do not travel well underwater, but light can. Li-Fi can enable communication between divers or submarines.
4. Smart Cities & Vehicles: Streetlights can provide internet to pedestrians. Car headlights and taillights can communicate with each other to prevent accidents (Vehicle-to-Vehicle communication).
5. Industrial Automation: Secure, high-speed control of robots in manufacturing plants.

Future Scope:
As the Internet of Things (IoT) expands, the demand for bandwidth will exceed what RF can provide. Li-Fi is poised to become a complementary technology to Wi-Fi, creating "HetNets" (Heterogeneous Networks) where devices seamlessly switch between Wi-Fi and Li-Fi depending on availability and lighting conditions.
''',
  ),
];
