
--
-- Database: `vote`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `candidate_id` int(11) NOT NULL,
  `position` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `year_level` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `party` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`candidate_id`, `position`, `firstname`, `lastname`, `year_level`, `gender`, `img`, `party`) VALUES
(23, 'President', 'Juena ', 'Akter Jerrin', '3rd Year', 'Female', 'upload/profile-3.jpeg', 'BGP'),
(24, 'Vice President', 'Abu ', 'Rayhan Mouno', '3rd Year', 'Male', 'upload/profile-2.jpeg', 'NBS'),
(27, 'Secretary General', 'Khondoker', 'Abu Naim', '3rd Year', 'Male', 'upload/29243662_577863212567502_7185998246894310128_n.jpg', 'BNP');

-- --------------------------------------------------------

--
-- Table structure for table `ids`
--

CREATE TABLE `ids` (
  `id_number` varchar(100) NOT NULL,
  `names` varchar(225) NOT NULL,
  `started` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ids`
--

INSERT INTO `ids` (`id_number`, `names`, `started`) VALUES
('170201011', 'Juena Akter Jerrin', '2022-02-11'),
('180201118', 'Abu Rayhan Mouno', '2022-02-09'),
('200101079', 'Fardous Tahsin', '2022-01-09'),
('200101103', 'Khondoker Abu Naim', '2022-04-16'),
('200101106', 'Moinul Islam', '2022-02-09');

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

CREATE TABLE `logins` (
  `user_id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `login_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logins`
--

INSERT INTO `logins` (`user_id`, `username`, `login_time`) VALUES
(1, ' user', '2019-02-12 13:21:43'),
(, '    ', '   '),
(, '    ', '   ');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `Phone` int(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `firstname`, `lastname`, `Phone`, `email`) VALUES
(103, 'naim', 'naim', 'Khondoker', 'Abu Naim', 977112458, 'kabunaim@gmail.com'),
(118, 'admin', 'admin', 'Abu Rayhan', ' Mouno', 977112458, 'mouno@gmail.com');


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `Phone` int(100) NOT NULL DEFAULT '260',
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `firstname`, `lastname`, `Phone`, `email`) VALUES
(2, 'user', 'user', 'Abu', 'Naim', 253626, 'naim@mail.com');

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `voters_id` int(11) NOT NULL,
  `id_number` varchar(12) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `prog_study` varchar(10) NOT NULL,
  `year_level` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `account` varchar(100) NOT NULL DEFAULT 'Inactive',
  `date` date DEFAULT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`voters_id`, `id_number`, `firstname`, `lastname`, `gender`, `prog_study`, `year_level`, `status`, `account`, `date`, `password`) VALUES

(75, '200101079', 'Fardous ', 'Tahsin', 'Male', '3rd Year', 'Unvoted', 'Active', '2022-05-02', '202cb962ac59075b964b07152d234b70'),
(74, '180201118', 'Abu ', 'Rayhan Mouno', 'Male', '3rd Year', 'Voted', 'Active', '2022-05-02', '202cb962ac59075b964b07152d234b70'),
(73, '200101103', 'Khondoker ', 'Abu Naim', 'Male', '3rd Year', 'Voted', 'Active', '2022-05-02', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `vote_id` int(255) NOT NULL,
  `candidate_id` varchar(255) NOT NULL,
  `voters_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`vote_id`, `candidate_id`, `voters_id`) VALUES
(111, '1', '59'),
(112, '3', '59'),
(113, '6', '59'),
(114, '8', '59'),
(115, '9', '59'),
(116, '11', '59'),
(117, '14', '59'),
(118, '15', '59'),
(119, '18', '59'),
(120, '19', '59'),
(121, '22', '59'),
(122, '2', '63'),
(123, '3', '63'),
(124, '6', '63'),
(125, '8', '63'),
(126, '10', '63'),
(127, '11', '63'),
(128, '13', '63'),
(129, '16', '63'),
(130, '17', '63'),
(131, '19', '63'),
(132, '22', '63');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`candidate_id`);

--
-- Indexes for table `ids`
--
ALTER TABLE `ids`
  ADD PRIMARY KEY (`id_number`);

--
-- Indexes for table `logins`
--
ALTER TABLE `logins`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`voters_id`),
  ADD UNIQUE KEY `id_number` (`id_number`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`vote_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidate`
--
ALTER TABLE `candidate`
  MODIFY `candidate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `logins`
--
ALTER TABLE `logins`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `voters_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `vote_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
