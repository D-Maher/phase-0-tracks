# Hash Setup

zoo = {
  primate_exhibit: {
    gorillas: [
      "Harambe",
      "Koko",
      "Turk"
    ],
    chimpanzees: [
      "Paul",
      "John",
      "George",
      "Ringo"
    ],
    fun_facts: {
      date_built: 1992,
      days_since_incident: 724,
      primate_rivalries: {
        gorilla_rivalries: [
          "Koko vs Turk"
        ],
        chimpanzee_rivalries: [
        "Paul vs John",
        "George vs Ringo"
        ],
      }
    }
  },

  aquatic_exhibit: {
    fish: {
      sharks: [
        "Great White Shark",
        "Hammerhead Shark",
        "Mako Shark"
      ],
      rays: [
        "Manta Ray",
        "Stingray"
      ],
      other_fish: [
        "Tuna",
        "Coelacanth",
        "Blue Tang"
      ],
    },
    mammals: [
      "Dolphin",
      "Platypus",
      "Humpback Whale",
    ],
    dolphin_show: {
      start_time: "3:00pm",
      end_time: "4:00pm",
      seats_available: 500,
      average_daily_attendance: 421
    },
  }

}


# Driver Code

# Access last chimpanzee rivalry in the list
puts zoo[:primate_exhibit][:fun_facts][:primate_rivalries][:chimpanzee_rivalries].last

# access second fish in the array 'other_fish'
puts zoo[:aquatic_exhibit][:fish][:other_fish][1]