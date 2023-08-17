-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 17, 2023 at 04:56 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `satusehat`
--

-- --------------------------------------------------------

--
-- Table structure for table `Dokter`
--

CREATE TABLE `Dokter` (
  `idDokter` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `tipe` varchar(200) NOT NULL,
  `klinik` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Dokter`
--

INSERT INTO `Dokter` (`idDokter`, `nama`, `tipe`, `klinik`) VALUES
(1, 'dr. Nurin, Sp.PD', 'Spesialis Penyakit Dalam', 'Poli Penyakit Dalam'),
(2, 'dr. Siswanto, Sp.P', 'Spesialis Paru', 'Poli Paru'),
(3, 'dr. Armita', 'Umum', 'Poli Umum'),
(4, 'dr. Andika Pratomo, Sp.PD', 'Spesialis Penyakit Dalam', 'Poli Penyakit Dalam');

-- --------------------------------------------------------

--
-- Table structure for table `Obat`
--

CREATE TABLE `Obat` (
  `idObat` int(11) NOT NULL,
  `namaObat` varchar(200) NOT NULL,
  `dosis` varchar(100) NOT NULL,
  `tipe` varchar(100) NOT NULL,
  `idPenyakit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Obat`
--

INSERT INTO `Obat` (`idObat`, `namaObat`, `dosis`, `tipe`, `idPenyakit`) VALUES
(1, 'Metformin', '500 mg', 'Tablet', 13),
(2, 'Glibenclamide', '5 mg\r\n', 'Tablet', 13),
(3, 'Glimepiride', '2 mg', 'Tablet', 13),
(4, 'Acarbose', '50 mg', 'Tablet', 13),
(5, 'Dapagliflozin', '10 mg', 'Tablet', 13),
(6, 'Isoniazid', '300 mg', 'Tablet', 42),
(7, 'Rifampicin', '600 mg\r\n', 'Tablet', 42),
(8, 'Pyrazinamide', '20 mg', 'Tablet', 42),
(9, 'Ethambutol', '15 mg', 'Tablet', 42),
(10, 'Streptomycin', '15 mg', 'Tablet', 42),
(11, 'Loratadine', '10 mg', 'Kapsul', 3),
(12, 'Phenylephrine', '20 mg', 'Tablet', 3),
(13, 'Fluticasone', '1-2 spray', 'Nasal Spray', 3),
(14, 'Nedocromil', '1-2 spray', 'Nasal Spray', 3),
(15, 'Fexofenadine', '120 mg', 'Kapsul', 3),
(16, 'Omeprazole', '20 mg', 'Tablet', 6),
(17, 'Lansoprazole', '30 mg', 'Kapsul', 6),
(18, 'Calcium Carbonate', '10 mg', 'Tablet', 6),
(19, 'Metoclopramide', '10 mg', 'Tablet', 6),
(20, 'Polysilane', '1 sendok takar', 'Sirup', 6),
(21, 'Amlodipine', '5 mg', 'Tablet', 15),
(22, 'Losartan', '12.5 mg', 'Tablet', 15),
(23, 'Potassium', '25 mg', 'Kapsul', 15),
(24, 'Doxazosin', '4 mg', 'Tablet', 15),
(25, 'Hydrochlorothiazide', '40 mg', 'Tablet', 15),
(26, 'Meclizine', '12.5 mg', 'Tablet', 10),
(27, 'Diazepam', '10 mg', 'Tablet', 10),
(28, 'Prednisone', '20 mg', 'Tablet', 10),
(29, 'Verapamil', '240 mg', 'Tablet', 10),
(30, 'Ondansetron', '8 mg', 'Cair', 10),
(31, 'Paracetamol', '500 mg', 'Tablet', 36),
(32, 'Ibuprofen', '400 mg', 'Kapsul', 36),
(33, 'Aspirin', '325 mg', 'Tablet', 36),
(34, 'Acetaminophen', '500 mg', 'Kapsul', 36),
(35, 'Caffeine', '120 mg', 'Kapsul', 36),
(36, 'Azithromycin', '500 mg', 'Tablet', 39),
(37, 'Levofloxacin', '500 mg', 'Tablet', 39),
(38, 'Moxifloxacin', '400 mg', 'Tablet', 39),
(39, 'Clarithromycin', '250 mg', 'Tablet', 39),
(40, 'Ceftriaxone', '2 gr', 'Cair', 39),
(41, 'Sumatriptan', '10 mg', 'Cair', 30),
(42, 'Ergotamine', '2 mg', 'Tablet', 30),
(43, 'Aspirin', '900 mg', 'Tablet', 30),
(44, 'Naproxen', '250 mg', 'Tablet', 30),
(45, 'Ibuprofen', '400 mg', 'Kapsul', 30),
(46, 'Doxycycline', '100 mg', 'Kapsul', 2),
(47, 'Suldox Tab', '500 mg', 'Tablet', 2),
(48, 'Chloroquine', '150 mg', 'Tablet', 2),
(49, 'Mefloquine', '250 mg', 'Tablet', 2),
(50, 'Primaquine', '15 mg', 'Tablet', 2),
(51, 'Doxycycline', '100 mg', 'Kapsul', 2),
(52, 'Suldox Tab', '500 mg', 'Tablet', 2),
(53, 'Chloroquine', '150 mg', 'Tablet', 2),
(54, 'Mefloquine', '250 mg', 'Tablet', 2),
(55, 'Primaquine', '15 mg', 'Tablet', 2);

-- --------------------------------------------------------

--
-- Table structure for table `Pasien`
--

CREATE TABLE `Pasien` (
  `idPasien` int(11) NOT NULL,
  `noRekamMedis` int(11) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `Alamat` varchar(200) NOT NULL,
  `TanggalLahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Pasien`
--

INSERT INTO `Pasien` (`idPasien`, `noRekamMedis`, `Nama`, `Alamat`, `TanggalLahir`) VALUES
(1, 1280920, 'Dona Randita', 'Jalan Kapuas No 56 Yogyakarta', '1998-04-14'),
(2, 1389380, 'Boni Romadi', 'Jalan Pandega No 12 Sleman', '1971-02-10');

-- --------------------------------------------------------

--
-- Table structure for table `Pemeriksaan`
--

CREATE TABLE `Pemeriksaan` (
  `idPemeriksaan` int(11) NOT NULL,
  `TanggalPemeriksaan` datetime NOT NULL,
  `idDokter` int(11) NOT NULL,
  `idPasien` int(11) NOT NULL,
  `idPenyakit` int(11) NOT NULL,
  `gejala` varchar(500) NOT NULL,
  `tipePembayaran` varchar(100) NOT NULL,
  `tipePemeriksaan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Pemeriksaan`
--

INSERT INTO `Pemeriksaan` (`idPemeriksaan`, `TanggalPemeriksaan`, `idDokter`, `idPasien`, `idPenyakit`, `gejala`, `tipePembayaran`, `tipePemeriksaan`) VALUES
(2, '2023-08-12 04:05:08', 1, 2, 13, 'high blood glucose', 'Asuransi', 'Rawat Jalan'),
(3, '2023-08-12 04:19:09', 4, 1, 6, 'Gastroesophageal reflux disease', 'Cash', 'Rawat Jalan'),
(4, '2023-08-17 10:52:02', 3, 1, 36, 'discomfort and pain in the head', 'Asuransi', 'Rawat Jalan');

-- --------------------------------------------------------

--
-- Table structure for table `Penyakit`
--

CREATE TABLE `Penyakit` (
  `idPenyakit` int(11) NOT NULL,
  `kodePenyakit` varchar(50) NOT NULL,
  `namaPenyakit` varchar(100) NOT NULL,
  `DeskripsiGejala` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Penyakit`
--

INSERT INTO `Penyakit` (`idPenyakit`, `kodePenyakit`, `namaPenyakit`, `DeskripsiGejala`) VALUES
(1, 'DR', 'Drug Reaction', 'An adverse drug reaction (ADR) is an injury caused by taking medication. ADRs may occur following a single dose or prolonged administration of a drug or result from the combination of two or more drugs.'),
(2, 'MAL', 'Malaria', 'An infectious disease caused by protozoan parasites from the Plasmodium family that can be transmitted by the bite of the Anopheles mosquito or by a contaminated needle or transfusion. Falciparum malaria is the most deadly type.'),
(3, 'AL', 'Allergy', 'An allergy is an immune system response to a foreign substance that\'s not typically harmful to your body.They can include certain foods, pollen, or pet dander. Your immune system\'s job is to keep you healthy by fighting harmful pathogens.'),
(4, 'HPOTHY', 'Hypothyroidism', 'Hypothyroidism, also called underactive thyroid or low thyroid, is a disorder of the endocrine system in which the thyroid gland does not produce enough thyroid hormone.'),
(5, 'PSO', 'Psoriasis', 'Psoriasis is a common skin disorder that forms thick, red, bumpy patches covered with silvery scales. They can pop up anywhere, but most appear on the scalp, elbows, knees, and lower back. Psoriasis can\'t be passed from person to person. It does sometimes happen in members of the same family.'),
(6, 'GERD', 'GERD', 'Gastroesophageal reflux disease, or GERD, is a digestive disorder that affects the lower esophageal sphincter (LES), the ring of muscle between the esophagus and stomach. Many people, including pregnant women, suffer from heartburn or acid indigestion caused by GERD.'),
(7, 'CC', 'Chronic cholestasis', 'Chronic cholestatic diseases, whether occurring in infancy, childhood or adulthood, are characterized by defective bile acid transport from the liver to the intestine, which is caused by primary damage to the biliary epithelium in most cases'),
(8, 'HPTA', 'Hepatitis A', 'Hepatitis A is a highly contagious liver infection caused by the hepatitis A virus. The virus is one of several types of hepatitis viruses that cause inflammation and affect your liver\'s ability to function.'),
(9, 'OST', 'Osteoarthristis', 'Osteoarthritis is the most common form of arthritis, affecting millions of people worldwide. It occurs when the protective cartilage that cushions the ends of your bones wears down over time.'),
(10, 'VTG', 'Vertigo', 'Paroymsal  Positional Vertigo,Benign paroxysmal positional vertigo (BPPV) is one of the most common causes of vertigo ‚Äî the sudden sensation that you\'re spinning or that the inside of your head is spinning. Benign paroxysmal positional vertigo causes brief episodes of mild to intense dizziness.'),
(11, 'HPOGLY', 'Hypoglycemia', 'ypoglycemia is a condition in which your blood sugar (glucose) level is lower than normal. Glucose is your body\'s main energy source. Hypoglycemia is often related to diabetes treatment. But other drugs and a variety of conditions ‚Äî many rare ‚Äî can cause low blood sugar in people who don\'t have diabetes.'),
(12, 'ACN', 'Acne', 'Acne vulgaris is the formation of comedones, papules, pustules, nodules, and/or cysts as a result of obstruction and inflammation of pilosebaceous units (hair follicles and their accompanying sebaceous gland). Acne develops on the face and upper trunk. It most often affects adolescents.'),
(13, 'DM', 'Diabetes Mellitus', 'Diabetes mellitus is a disease that occurs when your blood glucose, also called blood sugar, is too high. Blood glucose is your main source of energy and comes from the food you eat. Insulin, a hormone made by the pancreas, helps glucose from food get into your cells to be used for energy.'),
(14, 'IMPTG', 'Impetigo', 'Impetigo (im-puh-TIE-go) is a common and highly contagious skin infection that mainly affects infants and children. Impetigo usually appears as red sores on the face, especially around a child\'s nose and mouth, and on hands and feet. The sores burst and develop honey-colored crusts.'),
(15, 'HBP', 'Hypertension', 'Hypertension (HTN or HT), also known as high blood pressure (HBP), is a long-term medical condition in which the blood pressure in the arteries is persistently elevated. High blood pressure typically does not cause symptoms.'),
(16, 'PUD', 'Peptic ulcer disease', 'Peptic ulcer disease (PUD) is a break in the inner lining of the stomach, the first part of the small intestine, or sometimes the lower esophagus. An ulcer in the stomach is called a gastric ulcer, while one in the first part of the intestines is a duodenal ulcer.'),
(17, 'DH', 'Dimorphic hemorrhoids(piles)', 'Hemorrhoids, also spelled haemorrhoids, are vascular structures in the anal canal. In their ... Other names, Haemorrhoids, piles, hemorrhoidal disease'),
(18, 'CC', 'Common Cold', 'The common cold is a viral infection of your nose and throat (upper respiratory tract). It\'s usually harmless, although it might not feel that way. Many types of viruses can cause a common cold.'),
(19, 'CP', 'Chicken pox', 'Chickenpox is a highly contagious disease caused by the varicella-zoster virus (VZV). It can cause an itchy, blister-like rash. The rash first appears on the chest, back, and face, and then spreads over the entire body, causing between 250 and 500 itchy blisters.'),
(20, 'CS', 'Cervical spondylosis', 'Cervical spondylosis is a general term for age-related wear and tear affecting the spinal disks in your neck. As the disks dehydrate and shrink, signs of osteoarthritis develop, including bony projections along the edges of bones (bone spurs)'),
(21, 'HPRTHY', 'Hyperthyroidism', 'Hyperthyroidism (overactive thyroid) occurs when your thyroid gland produces too much of the hormone thyroxine. Hyperthyroidism can accelerate your body\'s metabolism, causing unintentional weight loss and a rapid or irregular heartbeat.'),
(22, 'UTI', 'Urinary tract infection', 'Urinary tract infection: An infection of the kidney, ureter, bladder, or urethra. Abbreviated UTI. Not everyone with a UTI has symptoms, but common symptoms include a frequent urge to urinate and pain or burning when urinating.'),
(23, 'VV', 'Varicose veins', 'A vein that has enlarged and twisted, often appearing as a bulging, blue blood vessel that is clearly visible through the skin. Varicose veins are most common in older adults, particularly women, and occur especially on the legs.'),
(24, 'AIDS', 'AIDS', 'Acquired immunodeficiency syndrome (AIDS) is a chronic, potentially life-threatening condition caused by the human immunodeficiency virus (HIV). By damaging your immune system, HIV interferes with your body\'s ability to fight infection and disease.'),
(25, 'PAR', 'Paralysis (brain hemorrhage)', 'Intracerebral hemorrhage (ICH) is when blood suddenly bursts into brain tissue, causing damage to your brain. Symptoms usually appear suddenly during ICH. They include headache, weakness, confusion, and paralysis, particularly on one side of your body.'),
(26, 'TYPH', 'Typhoid', 'An acute illness characterized by fever caused by infection with the bacterium Salmonella typhi. Typhoid fever has an insidious onset, with fever, headache, constipation, malaise, chills, and muscle pain. Diarrhea is uncommon, and vomiting is not usually severe.'),
(27, 'HPTB', 'Hepatitis B', 'Hepatitis B is an infection of your liver. It can cause scarring of the organ, liver failure, and cancer. It can be fatal if it isn\'t treated. It\'s spread when people come in contact with the blood, open sores, or body fluids of someone who has the hepatitis B virus.'),
(28, 'FUI', 'Fungal infection', 'In humans, fungal infections occur when an invading fungus takes over an area of the body and is too much for the immune system to handle. Fungi can live in the air, soil, water, and plants. There are also some fungi that live naturally in the human body. Like many microbes, there are helpful fungi and harmful fungi.'),
(29, 'HPTC', 'Hepatitis C', 'Inflammation of the liver due to the hepatitis C virus (HCV), which is usually spread via blood transfusion (rare), hemodialysis, and needle sticks. The damage hepatitis C does to the liver can lead to cirrhosis and its complications as well as cancer.'),
(30, 'MIG', 'Migraine', 'A migraine can cause severe throbbing pain or a pulsing sensation, usually on one side of the head. It\'s often accompanied by nausea, vomiting, and extreme sensitivity to light and sound. Migraine attacks can last for hours to days, and the pain can be so severe that it interferes with your daily activities.'),
(31, 'BROASTH', 'Bronchial Asthma', 'Bronchial asthma is a medical condition which causes the airway path of the lungs to swell and narrow. Due to this swelling, the air path produces excess mucus making it hard to breathe, which results in coughing, short breath, and wheezing. The disease is chronic and interferes with daily working.'),
(32, 'ALCHPT', 'Alcoholic hepatitis', 'Alcoholic hepatitis is a diseased, inflammatory condition of the liver caused by heavy alcohol consumption over an extended period of time. It\'s also aggravated by binge drinking and ongoing alcohol use. If you develop this condition, you must stop drinking alcohol.'),
(33, 'JAU', 'Jaundice', 'Yellow staining of the skin and sclerae (the whites of the eyes) by abnormally high blood levels of the bile pigment bilirubin. The yellowing extends to other tissues and body fluids. Jaundice was once called the \"\"morbus regius\"\" (the regal disease) in the belief that only the touch of a king could cure it.'),
(34, 'HPTE', 'Hepatitis E', 'A rare form of liver inflammation caused by infection with the hepatitis E virus (HEV). It is transmitted via food or drink handled by an infected person or through infected water supplies in areas where fecal matter may get into the water. Hepatitis E does not cause chronic liver disease'),
(35, 'DNGU', 'Dengue', 'An acute infectious disease caused by a flavivirus (species Dengue virus of the genus Flavivirus), transmitted by aedes mosquitoes, and characterized by headache, severe joint pain, and a rash. ‚Äî called also breakbone fever, dengue fever.'),
(36, 'HEAD', 'Headache', 'a sensation of pain or discomfort in the head, scalp, or neck. The quality of the pain can vary. It might be sharp, stabbing, dull, aching, throbbing, or squeezing. Headaches can last from a few minutes to several hours or even days. '),
(37, 'HPTD', 'Hepatitis D', 'Hepatitis D, also known as the hepatitis delta virus, is an infection that causes the liver to become inflamed. This swelling can impair liver function and cause long-term liver problems, including liver scarring and cancer. The condition is caused by the hepatitis D virus (HDV).'),
(38, 'HA', 'Heart attack', 'The death of heart muscle due to the loss of blood supply. The loss of blood supply is usually caused by a complete blockage of a coronary artery, one of the arteries that supplies blood to the heart muscle.'),
(39, 'PNEU', 'Pneumonia', 'Pneumonia is an infection in one or both lungs. Bacteria, viruses, and fungi cause it. The infection causes inflammation in the air sacs in your lungs, which are called alveoli. The alveoli fill with fluid or pus, making it difficult to breathe.'),
(40, 'ARTH', 'Arthritis', 'Arthritis is the swelling and tenderness of one or more of your joints. The main symptoms of arthritis are joint pain and stiffness, which typically worsen with age. The most common types of arthritis are osteoarthritis and rheumatoid arthritis.'),
(41, 'GAST', 'Gastroenteritis', 'Gastroenteritis is an inflammation of the digestive tract, particularly the stomach, and large and small intestines. Viral and bacterial gastroenteritis are intestinal infections associated with symptoms of diarrhea , abdominal cramps, nausea , and vomiting .'),
(42, 'TBC', 'Tuberculosis', 'Tuberculosis (TB) is an infectious disease usually caused by Mycobacterium tuberculosis (MTB) bacteria. Tuberculosis generally affects the lungs, but can also affect other parts of the body. Most infections show no symptoms, in which case it is known as latent tuberculosis.');

-- --------------------------------------------------------

--
-- Table structure for table `Resep`
--

CREATE TABLE `Resep` (
  `idResep` int(11) NOT NULL,
  `idPemeriksaan` int(11) NOT NULL,
  `idObat` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Resep`
--

INSERT INTO `Resep` (`idResep`, `idPemeriksaan`, `idObat`, `quantity`, `keterangan`) VALUES
(1, 2, 2, 30, '2x1 pagi malam'),
(2, 2, 1, 15, '1x1 pagi hari'),
(3, 3, 16, 10, '1x1 pagi sebelum makan'),
(4, 3, 20, 1, '2x1 siang malam sebelum makan'),
(5, 4, 31, 10, '2x1 pagi malam setelah makan'),
(6, 4, 32, 10, '1x1 pagi setelah makan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Dokter`
--
ALTER TABLE `Dokter`
  ADD PRIMARY KEY (`idDokter`);

--
-- Indexes for table `Obat`
--
ALTER TABLE `Obat`
  ADD PRIMARY KEY (`idObat`),
  ADD KEY `idPenyakit` (`idPenyakit`);

--
-- Indexes for table `Pasien`
--
ALTER TABLE `Pasien`
  ADD PRIMARY KEY (`idPasien`);

--
-- Indexes for table `Pemeriksaan`
--
ALTER TABLE `Pemeriksaan`
  ADD PRIMARY KEY (`idPemeriksaan`),
  ADD KEY `idDokter` (`idDokter`),
  ADD KEY `idPasien` (`idPasien`),
  ADD KEY `idPenyakit` (`idPenyakit`);

--
-- Indexes for table `Penyakit`
--
ALTER TABLE `Penyakit`
  ADD PRIMARY KEY (`idPenyakit`);

--
-- Indexes for table `Resep`
--
ALTER TABLE `Resep`
  ADD PRIMARY KEY (`idResep`),
  ADD KEY `idPemeriksaan` (`idPemeriksaan`),
  ADD KEY `idObat` (`idObat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Dokter`
--
ALTER TABLE `Dokter`
  MODIFY `idDokter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Obat`
--
ALTER TABLE `Obat`
  MODIFY `idObat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `Pasien`
--
ALTER TABLE `Pasien`
  MODIFY `idPasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Pemeriksaan`
--
ALTER TABLE `Pemeriksaan`
  MODIFY `idPemeriksaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Penyakit`
--
ALTER TABLE `Penyakit`
  MODIFY `idPenyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `Resep`
--
ALTER TABLE `Resep`
  MODIFY `idResep` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Obat`
--
ALTER TABLE `Obat`
  ADD CONSTRAINT `obat_ibfk_1` FOREIGN KEY (`idPenyakit`) REFERENCES `Penyakit` (`idPenyakit`);

--
-- Constraints for table `Pemeriksaan`
--
ALTER TABLE `Pemeriksaan`
  ADD CONSTRAINT `pemeriksaan_ibfk_1` FOREIGN KEY (`idDokter`) REFERENCES `Dokter` (`idDokter`),
  ADD CONSTRAINT `pemeriksaan_ibfk_2` FOREIGN KEY (`idPasien`) REFERENCES `Pasien` (`idPasien`),
  ADD CONSTRAINT `pemeriksaan_ibfk_3` FOREIGN KEY (`idPenyakit`) REFERENCES `Penyakit` (`idPenyakit`);

--
-- Constraints for table `Resep`
--
ALTER TABLE `Resep`
  ADD CONSTRAINT `resep_ibfk_1` FOREIGN KEY (`idPemeriksaan`) REFERENCES `Pemeriksaan` (`idPemeriksaan`),
  ADD CONSTRAINT `resep_ibfk_2` FOREIGN KEY (`idObat`) REFERENCES `Obat` (`idObat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
