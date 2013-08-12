insult = "artless             base-court          apple-john
bawdy               bat-fowling         baggage
beslubbering        beef-witted         barnacle
bootless            beetle-headed       bladder
churlish            boil-brained        boar-pig
cockered            clapper-clawed      bugbear
clouted             clay-brained        bum-bailey
craven              common-kissing      canker-blossom
currish             crook-pated         clack-dish
dankish             dismal-dreaming     clotpole
dissembling         dizzy-eyed          coxcomb
droning             doghearted          codpiece
errant              dread-bolted        death-token
fawning             earth-vexing        dewberry
fobbing             elf-skinned         flap-dragon
froward             fat-kidneyed        flax-wench
frothy              fen-sucked          flirt-gill
gleeking            flap-mouthed        foot-licker
goatish             fly-bitten          fustilarian
gorbellied          folly-fallen        giglet
impertinent         fool-born           gudgeon
infectious          full-gorged         haggard
jarring             guts-griping        harpy
loggerheaded        half-faced          hedge-pig
lumpish             hasty-witted        horn-beast
mammering           hedge-born          hugger-mugger
mangled             hell-hated          joithead
mewling             idle-headed         lewdster
paunchy             ill-breeding        lout
pribbling           ill-nurtured        maggot-pie
puking              knotty-pated        malt-worm
puny                milk-livered        mammet
qualling            motley-minded       measle
rank                onion-eyed          minnow
reeky               plume-plucked       miscreant
roguish             pottle-deep         moldwarp
ruttish             pox-marked          mumble-news
saucy               reeling-ripe        nut-hook
spleeny             rough-hewn          pigeon-egg
spongy              rude-growing        pignut
surly               rump-fed            puttock
tottering           shard-borne         pumpion
unmuzzled           sheep-biting        ratsbane
vain                spur-galled         scut
venomed             swag-bellied        skainsmate
villainous          tardy-gaited        strumpet
warped              tickle-brained      varlot
wayward             toad-spotted        vassal
weedy               unchin-snouted      whey-face
yeasty              weather-bitten      wagtail"
insult_array = insult.split("\n")
split_array = []
insult_array.each {|string| split_array << string.gsub(/\s+/, " ").split(" ")}
final_array = []
split_array.each do |mini_array|
  mini_array.each_with_index do |item, index|
    if final_array[index]
      final_array[index] += [item]
    else 
      final_array[index] = [item]
    end
  end
end
p final_array

