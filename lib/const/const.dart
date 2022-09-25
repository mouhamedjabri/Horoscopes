import 'package:flutter/material.dart';

//colors
const Color mainColor = Color(0xFF0B182D);

//assets
const String logo = "assets/logo.png";
const String star = "assets/star.png";

//horoscop data

const horoscopList = [
  {
    "titel":"Aries",
    "url":"https://ohmanda.com/api/horoscope/aries/",
    "img":"assets/zodiac_images/aries.png",
    "img-B":"assets/zodiac_images/aries-B.png",
    "time":"Mar 21 - Apr 19",
    "descreption":"""Aries, (Latin: “Ram”) in astronomy, zodiacal constellation in the northern sky lying between Pisces and Taurus, at about 3 hours right ascension and 20° north declination.

Aries contains no very bright stars; the brightest star, Hamal (Arabic for “sheep”), has a magnitude of 2.0. The first point of Aries, or vernal equinox, is an intersection of the celestial equator with the apparent annual pathway of the Sun and the point in the sky from which celestial longitude and right ascension are measured. The vernal equinox no longer lies in Aries but has been moved into Pisces by the precession of the equinoxes."""
  },
  {
    "titel":"Taurus",
    "url":"https://ohmanda.com/api/horoscope/taurus/",
    "img":"assets/zodiac_images/taurus.png",
    "img-B":"assets/zodiac_images/taurus-B.png",
    "time":"Apr 20 - May 20",
    "descreption":"""Taurus, (Latin: “Bull”) in astronomy, zodiacal constellation lying in the northern sky between Aries and Gemini, at about 4 hours 20 minutes right ascension and 16° north declination. The constellation’s brightest star, Aldebaran (Arabic for “the follower”; also called Alpha Tauri), is the 14th brightest star in the sky, with a magnitude of 0.85. The constellation also contains the Crab Nebula (M1) and the Pleiades and Hyades star clusters.

In astrology, Taurus is the second sign of the zodiac, considered as governing that portion of the year from about April 20 to about May 20. Its representation as a bull is related to the Greek myth of Zeus, who assumed the form of a bull to abduct Europa."""
  },
  {
    "titel":"Gemini",
    "url":"https://ohmanda.com/api/horoscope/gemini/",
    "img":"assets/zodiac_images/gemini.png",
    "img-B":"assets/zodiac_images/gemini-B.png",
    "time":"May 21 - Jun 20",
    "descreption":"""Gemini, (Latin: “Twins”) in astronomy, zodiacal constellation lying in the northern sky between Cancer and Taurus, at about 7 hours right ascension and 22° north declination. Its brightest stars are Castor and Pollux (Alpha and Beta Geminorum); Pollux is the brighter of the two, with a magnitude of 1.15, and is the 17th brightest star in the sky. The summer solstice, the northernmost point reached by the Sun in its annual apparent journey among the stars, lies in Gemini. This constellation also contains the isolated pulsar Geminga.
    
In astrology, Gemini is the third sign of the zodiac, considered as governing the period from about May 21 to about June 21. It is represented by a set of twins (or in Egyptian astrology by a pair of goats and in Arabian astrology by a pair of peacocks). In addition to their identification as Castor and Pollux, the twins have also been related to other celebrated pairs, such as the younger and older Horus or Romulus and Remus."""

  },
  {
    "titel":"Cancer",
    "url":"https://ohmanda.com/api/horoscope/cancer/",
    "img":"assets/zodiac_images/cancer.png",
    "img-B":"assets/zodiac_images/cancer-B.png",
    "time":"Jun 21 - Jul 22",
    "descreption":"""Cancer, (Latin: “Crab”) in astronomy, zodiacal constellation lying in the northern sky between Leo and Gemini, at about 8 hours 25 minutes right ascension and 20° north declination. It contains the well-known star cluster called Praesepe, or the Beehive. Its brighest star, Al Tarf (Arabic for “the end” [of one of the crab’s legs]), also called Beta Cancri, is quite dim, with a magnitude of 3.6.

In astrology, Cancer is the fourth sign of the zodiac, considered as governing the period from about June 22 to about July 22. Its representation as a crab (or lobster or crayfish) is related to the crab in Greek mythology that pinched Heracles while he was fighting the Lernaean hydra. Crushed by Heracles, the crab was rewarded by Heracles’ enemy, Hera, by being placed in the heavens.    """

  },
  {
    "titel":"Leo",
    "url":"https://ohmanda.com/api/horoscope/leo/",
    "img":"assets/zodiac_images/leo.png",
    "img-B":"assets/zodiac_images/leo-B.png",
    "time":"Jul 23 - Aug 22",
    "descreption":"""Leo, (Latin: “Lion”) in astronomy, zodiacal constellation lying in the northern sky between Cancer and Virgo, at about 10 hours 30 minutes right ascension and 15° north declination. Regulus (Latin for “little king”; also called Alpha Leonis), the brightest star, is of magnitude 1.35. The November meteor shower called the Leonids has its radiant, or point of apparent origin, in Leo. Many of the stars in Leo form an asterism called the Sickle.

In astrology, Leo is the fifth sign of the zodiac, considered as governing the period from about July 23 to about August 22. Its representation as a lion is usually linked with the Nemean lion slain by Heracles (Hercules).    """

  },
  {
    "titel":"Virgo",
    "url":"https://ohmanda.com/api/horoscope/virgo/",
    "img":"assets/zodiac_images/virgo.png",
    "img-B":"assets/zodiac_images/virgo-B.png",
    "time":"Aug 23 - Sep 22",
    "descreption":"""Virgo, (Latin: “Virgin”) in astronomy, zodiacal constellation lying in the southern sky between Leo and Libra, at about 13 hours right ascension and 2° south declination. The constellation’s brightest star, Spica (Latin for “head of grain,” also called Alpha Virginis), is the 15th brightest star in the sky, with a magnitude of 1.04. Virgo contains the nearest large cluster of galaxies, the Virgo cluster, in which is located the giant elliptical galaxy Virgo A and PSR 1257+12, the pulsar around which the first extrasolar planets were discovered in 1992.

In astrology, Virgo is the sixth sign of the zodiac, considered as governing the period from about August 23 to about September 22. It is represented as a young maiden carrying a sheaf of wheat. She is variously identified as a fertility goddess (the Babylonian and Assyrian Ishtar, among others) or the harvest maiden (the Greek Persephone and others).    """

  },
  {
    "titel":"Libra",
    "url":"https://ohmanda.com/api/horoscope/libra/",
    "img":"assets/zodiac_images/libra.png",
    "img-B":"assets/zodiac_images/libra-B.png",
    "time":"Sep 23 - Oct 22",
    "descreption":"""Libra, (Latin: “Balance”) in astronomy, zodiacal constellation in the southern sky lying between Scorpius and Virgo, at about 15 hours 30 minutes right ascension and 15° south declination. Its stars are faint; the brightest star, Zubeneschamali (Arabic for “northern claw,” as it was earlier regarded as part of Scorpius; also called Beta Librae), has a magnitude of 2.6.

In astrology, Libra is the seventh sign of the zodiac, considered as governing the period from about September 22 to about October 23. It is represented by a woman (sometimes identified with Astraea, the Roman goddess of justice), holding a balance scale or by the balance alone.    """

  },
  {
    "titel":"Scorpio",
    "url":"https://ohmanda.com/api/horoscope/scorpio/",
    "img":"assets/zodiac_images/scorpio.png",
    "img-B":"assets/zodiac_images/scorpio-B.png",
    "time":"Oct 23 - Nov 21",
    "descreption":"""Scorpius, (Latin: “Scorpion”) also called Scorpio, in astronomy, zodiacal constellation lying in the southern sky between Libra and Sagittarius, at about 16 hours 30 minutes right ascension and 30° south declination. Its brightest star, Antares (Alpha Scorpii), the 15th brightest star in the sky, has a magnitude of 1.1. Its name comes from the Greek for “rival of Ares” (i.e., rival of the planet Mars) and was probably given because of the star’s red colour and brightness. The brightest X-ray source in the sky, Scorpius X-1, is found in this constellation.

In astrology, Scorpius (or Scorpio) is the eighth sign of the zodiac, considered as governing the period from about October 24 to about November 21. Its representation as a scorpion is related to the Greek legend of the scorpion that stung Orion to death (said to be why Orion sets as Scorpius rises in the sky). Another Greek myth relates that a scorpion caused the horses of the Sun to bolt when they were being driven for a day by the inexperienced youth Phaeton."""

  },
  {
    "titel":"Sagittarius",
    "url":"https://ohmanda.com/api/horoscope/sagittarius/",
    "img":"assets/zodiac_images/sagittarius.png",
    "img-B":"assets/zodiac_images/sagittarius-B.png",
    "time":"Nov 22 - Dec 21",
    "descreption":"""Sagittarius, (Latin: “Archer”) in astronomy, zodiacal constellation in the southern sky lying between Capricornus and Scorpius, at about 19 hours right ascension and 25° south declination. The centre of the Milky Way Galaxy lies in the radio source Sagittarius A*. Near the western border of Sagittarius is the winter solstice, the southernmost point reached by the Sun in its apparent annual journey among the stars. This constellation also contains the Lagoon and Trifid nebulas. The brightest star is Kaus Australis (from the Arabic for “bow” and the Latin for “southern,” respectively; it is also called Epsilon Sagittarii), with a magnitude of 1.9. Many of the stars are arranged in the prominent asterism called the Teapot.

In astrology, Sagittarius is the ninth sign of the zodiac, considered as governing the period from about November 22 to about December 21. It is represented either by a centaur shooting a bow and arrow or by an arrow drawn across a bow. The identification of Sagittarius as a mounted archer was made by the Babylonians as early as the 11th century bce."""

  },
  {
    "titel":"Capricorn",
    "url":"https://ohmanda.com/api/horoscope/capricorn/",
    "img":"assets/zodiac_images/capricorn.png",
    "img-B":"assets/zodiac_images/capricorn-B.png",
    "time":"Dec 22 - Jan 19",
    "descreption":"""Capricorn, (from Latin: “Goat-Horned”) also called Capricornus and the Goat, in astrology, the 10th sign of the zodiac, considered as governing the period from about December 22 to about January 19. One explanation of the fishtail with which the goat is often represented is found in the Greek myth of Pan, who, to avoid the monster Typhon, jumped into the water just as he was changing into animal shape. The half above water assumed the shape of a goat while the lower half, the tail, assumed the shape of a fish.

In astronomy, Capricornus is a zodiacal constellation lying in the southern sky between Aquarius and Sagittarius, at about 21 hours right ascension and 20° south declination. Its stars are faint; Deneb Algedi (Arabic for “kid’s tail”) is the brightest star, with a magnitude of 2.9. Capricornus usually refers to the constellation, and Capricorn usually refers to the astrological sign."""

  },
  {
    "titel":"Aquarius",
    "url":"https://ohmanda.com/api/horoscope/aquarius/",
    "img":"assets/zodiac_images/aquarius.png",
    "img-B":"assets/zodiac_images/aquarius-B.png",
    "time":"Jan 20 - Feb 18",
    "descreption":"""Aquarius, (Latin: “Water Bearer”) in astronomy, zodiacal constellation lying in the southern sky between Capricornus and Pisces, at about 22 hours right ascension and 10° south declination. It lacks striking features, the brightest star, Sadalmelik (Arabic for “the lucky stars of the king”), being of magnitude 3.0.

In astrology, Aquarius is the 11th sign of the zodiac, considered as governing the period from about January 20 to about February 18. Its representation as a man pouring a stream of water out of a jug came about, it has been suggested, because in ancient times the rising of Aquarius coincided in the Middle East with a period of floods and rain."""

  },
  {
    "titel":"Pisces",
    "url":"https://ohmanda.com/api/horoscope/Pisces/",
    "img":"assets/zodiac_images/pisces.png",
    "img-B":"assets/zodiac_images/pisces-B.png",
    "time":"Feb 19 - Mar 20",
    "descreption":"""Pisces, (Latin: “Fishes”) in astronomy, zodiacal constellation in the northern sky between Aries and Aquarius, at about 1 hour right ascension and 15° north declination. The vernal equinox, the point where the Sun’s annual apparent path takes it north of the celestial equator and from which celestial longitude and right ascension are measured, lies in Pisces. The constellation contains only faint stars without any striking grouping; the brightest star, Eta Piscium, has a magnitude of 3.6.

In astrology, Pisces is the 12th sign of the zodiac, considered as governing the period from about February 19 to about March 20. Its representation as two fish tied together is usually related to the Greek myth of Aphrodite and Eros, who jumped into a river to escape the monster Typhon and changed into fish, or, alternatively, the two fish that carried them to safety."""

  },

];