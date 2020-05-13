class Profile < ApplicationRecord
  belongs_to :user, optional: true

  enum birth_year:{ "2020": 1,
                    "2019": 2,
                    "2018": 3,
                    "2017": 4,
                    "2016": 5,
                    "2015": 6,
                    "2014": 7,
                    "2013": 8,
                    "2012": 9,
                    "2011": 10,
                    "2010": 11,
                    "2009": 12,
                    "2008": 13,
                    "2007": 14,
                    "2006": 15,
                    "2005": 16,
                    "2004": 17,
                    "2003": 18,
                    "2002": 19,
                    "2001": 20,
                    "2000": 21,
                    "1999": 22,
                    "1998": 23,
                    "1997": 24,
                    "1996": 25,
                    "1995": 26,
                    "1994": 27,
                    "1993": 28,
                    "1992": 29,
                    "1991": 30,
                    "1990": 31,
                    "1989": 32,
                    "1988": 33,
                    "1987": 34,
                    "1986": 35,
                    "1985": 36,
                    "1984": 37,
                    "1983": 38,
                    "1982": 39,
                    "1981": 40,
                    "1980": 41,
                    "1979": 42,
                    "1978": 43,
                    "1977": 44,
                    "1976": 45,
                    "1975": 46,
                    "1974": 47,
                    "1973": 48,
                    "1972": 49,
                    "1971": 50,
                    "1970": 51,
                    "1969": 52,
                    "1968": 53,
                    "1967": 54,
                    "1966": 55,
                    "1965": 56,
                    "1964": 57,
                    "1963": 58,
                    "1962": 59,
                    "1961": 60,
                    "1960": 61,
                    "1959": 62,
                    "1958": 63,
                    "1957": 64,
                    "1956": 65,
                    "1955": 66,
                    "1954": 67,
                    "1953": 68,
                    "1952": 69,
                    "1951": 70,
                    "1950": 71,
                    "1949": 72,
                    "1948": 73,
                    "1947": 74,
                    "1946": 75,
                    "1945": 76,
                    "1944": 77,
                    "1943": 78,
                    "1942": 79,
                    "1941": 80,
                    "1940": 81,
                    "1939": 82,
                    "1938": 83,
                    "1937": 84,
                    "1936": 85,
                    "1935": 86,
                    "1934": 87,
                    "1933": 88,
                    "1932": 89,
                    "1931": 90,
                    "1930": 91,
                    "1929": 92,
                    "1928": 93,
                    "1927": 94,
                    "1926": 95,
                    "1925": 96,
                    "1924": 97,
                    "1923": 98,
                    "1922": 99,
                    "1921": 100,
                    "1920": 101,
                    "1919": 102,
                    "1918": 103,
                    "1917": 104,
                    "1916": 105,
                    "1915": 106,
                    "1914": 107,
                    "1913": 108,
                    "1912": 109,
                    "1911": 110,
                    "1910": 111,
                    "1909": 112,
                    "1908": 113,
                    "1907": 114,
                    "1906": 115,
                    "1905": 116,
                    "1904": 117,
                    "1903": 118,
                    "1902": 119,
                    "1901": 120,
                    "1900": 121}

  enum birth_month:{ monthone: 1,
                     monthtwo: 2,
                     monththree: 3,
                     monthfour: 4,
                     monthfive: 5,
                     monthsix: 6,
                     monthseven: 7,
                     montheight: 8,
                     monthnine: 9,
                     monthten: 10,
                     montheleven: 11,
                     monthtwelve: 12}

  enum birth_day:{ "1": 1,
                      "2": 2,
                      "3": 3,
                      "4": 4,
                      "5": 5,
                      "6": 6,
                      "7": 7,
                      "8": 8,
                      "9": 9,
                      "10": 10,
                      "11": 11,
                      "12": 12,
                      "13": 13,
                      "14": 14,
                      "15": 15,
                      "16": 16,
                      "17": 17,
                      "18": 18,
                      "19": 19,
                      "20": 20,
                      "21": 21,
                      "22": 22,
                      "23": 23,
                      "24": 24,
                      "25": 25,
                      "26": 26,
                      "27": 27,
                      "28": 28,
                      "29": 29,
                      "30": 30,
                      "31": 31}

  with_options presence: true do
    validates :family_name
    validates :first_name
    validates :family_name_kana
    validates :first_name_kana
    validates :birth_year
    validates :birth_month
    validates :birth_day
  end
end

  

