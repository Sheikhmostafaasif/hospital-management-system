SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";



--
-- Database: `php`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` text NOT NULL,
  `username` varchar(100) NOT NULL,
  `doctorname` text NOT NULL,
  `disease` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `date`, `time`, `username`, `doctorname`, `disease`) VALUES
(1, '2024-04-24', '11-1', 'Asif', 'Minhaz', 'mild'),
(2, '2024-04-26', '6-8', 'Asif', 'Asif', 'emergency'),
(3, '2024-04-26', '8-10', 'Labib', 'Meharab', 'serious'),
(4, '2024-03-11', '6-8', 'Meharab', 'Meharab', 'emergency'),
(5, '2024-03-11', '9-11', 'Eliza', 'Yesmin', 'serious'),
(6, '2024-02-24', '6-8', 'Mostafa', 'Mostafa', 'serious'),
(7, '2024-01-21', '8-10', 'Meharab', 'Mostafa', 'emergency'),
(8, '2024-01-30', '9-11', 'Mostafa', 'Mostafa', 'mild');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `name` text NOT NULL,
  `dob` date NOT NULL,
  `mail` text NOT NULL,
  `docid` int(11) NOT NULL,
  `address` text NOT NULL,
  `phno` varchar(15) NOT NULL,
  `qualification` text NOT NULL,
  `department` text NOT NULL,
  `uname` varchar(32) NOT NULL,
  `pass` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`name`, `dob`, `mail`, `docid`, `address`, `phno`, `qualification`, `department`, `uname`, `pass`) VALUES
('Prof.Dr.M.N.Huda', '1950-04-02', 'huda778@gmail.com', '76300', 'Muhammadpur', '01954323163', 'MBBS(DMC)', 'Dermatologist', 'Huda', 'huda'),
('Prof.Dr.Md.Hafizur Rahman', '1966-04-10', 'hafizurr28@gmail.com', '71548', 'Uttara', '01718333435', 'MBBS', 'Thyroid specialist', 'Hafizur', 'hafizur'),
('Prof.Dr.Md.Kamrul Islam', '1952-04-05', 'kamrulislam22@gmail.com', '57477', 'Cumilla', '01628102030', 'MBBS,FCPS', 'Kidney transplant specialist', 'Kamrul', 'kamrul'),
('Prof.Dr.Khan Abdul Kalam Azad', '1970-05-10', 'abdulkalam266@gmail.com', '59609', 'Muhammadpur', '01845358172', 'MBBS,BCS(Health)', 'Skin, Allergy', 'Azad', 'azad'),
('Prof.Dr.Indrajit Prasad', '1962-08-07', 'indrajitprasad@gmail.com', '59451', 'Dhaka', '01653296384', 'MBBS, FCPS', 'Prostate specialist', 'Indrajit', 'indrajit'),
('Prof.Dr.Mizanur Rahman', '1955-02-16', 'mizanurr545@gmail.com', '81278', 'Dhaka', '01653296384', 'MBBS, FCPS', 'Medicine Specialist', 'Mizanur', 'mizanur'),
('Prof.Dr.Titu Miah', '1979-11-07', 'titumiah747@gmail.com', '76429', 'Banasree', '01653296384', 'MBBS, FCPS, MD', 'Hormone Specialist', 'Titu', 'titu'),
('Prof.Dr.Anowara Begum', '1980-06-20', 'anowarabegum11@gmail.com', '95898', 'Dhanmondi', '01653296384', 'MBBS, FCPS', 'Surgeon', 'Anowara', 'anowara'),
('Dr.Shariful Islam', '1982-04-19', 'sharifulislam223@gmail.com', '51579', 'Dhanmondi', '01653296384', 'MBBS, FCPS', 'Medicine', 'Shariful', 'shariful'),
('Prof.Dr.Mujibul Hoque', '1979-03-27', 'mujibulhoque753@gmail.com', '67031', 'Dhanmondi', '01653296384', 'MBBS,FCPS, FRCP', 'Gynecology', 'Mujibul', 'mujibul');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `name` text NOT NULL,
  `feedback` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `feedback`) VALUES
('Mostafa', 'good'),
('Asif', 'awesome');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `name` text NOT NULL,
  `dob` date NOT NULL,
  `mail` text NOT NULL,
  `uname` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`name`, `dob`, `mail`, `uname`, `password`) VALUES
('Asif', '2024-04-03', 'asif@gmail.com', 'Asif', 'asif'),
('Labib', '2024-04-17', 'labib@gmail.com', 'Labib', 'labib'),
('Meharab', '2024-05-22', 'meharab@gmail.com', 'Meharab', 'meharab'),
('Eliza', '2024-08-15', 'eliza@gmail.com', 'Eliza', 'eliza'),
('Mostafa', '2024-11-18', 'mostafa@gmail.com', 'Mostafa', 'mostafa');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `filename` varchar(1000) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

