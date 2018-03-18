@include "util.awk"
@include "irc.awk"
function drawtarot(Service, args) {
  output = tarotcard[randint(78)]
  if (randint(2) == 1) output = output" (Reversed)"
  sendmsg(Service, args["target"], output)
}

BEGIN {
  #Major Arcana
  tarotcard[0]="The Fool"
  tarotcard[1]="The Magician"
  tarotcard[2]="The High Priestess"
  tarotcard[3]="The Empress"
  tarotcard[4]="The Emperor"
  tarotcard[5]="The Heirophant"
  tarotcard[6]="The Lovers"
  tarotcard[7]="The Chariot"
  tarotcard[8]="Strength"
  tarotcard[9]="The Hermit"
  tarotcard[10]="Wheel of Fortune"
  tarotcard[11]="Justice"
  tarotcard[12]="The Hanged Man"
  tarotcard[13]="Death"
  tarotcard[14]="Temperance"
  tarotcard[15]="The Devil"
  tarotcard[16]="The Tower"
  tarotcard[17]="The Star"
  tarotcard[18]="The Moon"
  tarotcard[19]="The Sun"
  tarotcard[20]="Judgment"
  tarotcard[21]="The World"

  #Cups
  tarotcard[22]="The King of Cups"
  tarotcard[23]="The Queen of Cups"
  tarotcard[24]="The Knight of Cups"
  tarotcard[25]="The Page of Cups"
  tarotcard[26]="The Ten of Cups"
  tarotcard[27]="The Nine of Cups"
  tarotcard[28]="The Eight of Cups"
  tarotcard[29]="The Seven of Cups"
  tarotcard[30]="The Six of Cups"
  tarotcard[31]="The Five of Cups"
  tarotcard[32]="The Four of Cups"
  tarotcard[33]="The Three of Cups"
  tarotcard[34]="The Two of Cups"
  tarotcard[35]="The Ace of Cups"

  #Swords
  tarotcard[36]="The King of Swords"
  tarotcard[37]="The Queen of Swords"
  tarotcard[38]="The Knight of Swords"
  tarotcard[39]="The Page of Swords"
  tarotcard[40]="The Ten of Swords"
  tarotcard[41]="The Nine of Swords"
  tarotcard[42]="The Eight of Swords"
  tarotcard[43]="The Seven of Swords"
  tarotcard[44]="The Six of Swords"
  tarotcard[45]="The Five of Swords"
  tarotcard[46]="The Four of Swords"
  tarotcard[47]="The Three of Swords"
  tarotcard[48]="The Two of Swords"
  tarotcard[49]="The Ace of Swords"

  #Wands
  tarotcard[50]="The King of Wands"
  tarotcard[51]="The Queen of Wands"
  tarotcard[52]="The Knight of Wands"
  tarotcard[53]="The Page of Wands"
  tarotcard[54]="The Ten of Wands"
  tarotcard[55]="The Nine of Wands"
  tarotcard[56]="The Eight of Wands"
  tarotcard[57]="The Seven of Wands"
  tarotcard[58]="The Six of Wands"
  tarotcard[59]="The Five of Wands"
  tarotcard[60]="The Four of Wands"
  tarotcard[61]="The Three of Wands"
  tarotcard[62]="The Two of Wands"
  tarotcard[63]="The Ace of Wands"

  #Pentacles
  tarotcard[64]="The King of Pentacles"
  tarotcard[65]="The Queen of Pentacles"
  tarotcard[66]="The Knight of Pentacles"
  tarotcard[67]="The Page of Pentacles"
  tarotcard[68]="The Ten of Pentacles"
  tarotcard[69]="The Nine of Pentacles"
  tarotcard[70]="The Eight of Pentacles"
  tarotcard[71]="The Seven of Pentacles"
  tarotcard[72]="The Six of Pentacles"
  tarotcard[73]="The Five of Pentacles"
  tarotcard[74]="The Four of Pentacles"
  tarotcard[75]="The Three of Pentacles"
  tarotcard[76]="The Two of Pentacles"
  tarotcard[77]="The Ace of Pentacles"

  #set tarot handler
  cmdhandler["tarot"] = "drawtarot"
}