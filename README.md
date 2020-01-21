# Library | Serial Strokes

## Dependencies

- Ruby (to run the tests)
- Docker

## Test and build

To execute docker build and docker tests:

    bundle install --binstubs --path vendor/bundle
    bundle exec rspec --format doc

To execute docker build only:

    docker build --rm --tag serial-strokes/library:latest .

To create the named volume containing the library files:

    docker run \
        --rm \
        --volume serial-strokes-library-volume:/opt/library \
        serial-strokes/library:latest true

## Sample tracks attributions

Music: "[White Water](https://freemusicarchive.org/music/Apache_Tomcat/Manifest_Destinys_Child_Soldier_Boy_George_Harrison_Ford_Focus/Apache_Tomcat_-_White_Water)" by [Apache Tomcat](https://freemusicarchive.org/music/Apache_Tomcat/) - From the [Free Music Archive](https://www.freemusicarchive.org/) - CC BY NC

Music: "[Goth Kids](https://freemusicarchive.org/music/Keith_Doom_and_the_Wrecking_Crew/Malt_Water_Party/Keith_Doom_and_The_Wrecking_Crew_-_Malt_Water_Party_EP_-_04_Goth_Kids)" by [Keith Doom and the Wrecking Crew](https://freemusicarchive.org/music/Keith_Doom_and_the_Wrecking_Crew/) - From the [Free Music Archive](https://www.freemusicarchive.org/) - CC BY NC

Music: "[Bluegarden](https://freemusicarchive.org/music/Lately_Kind_of_Yeah/The_Lost_Adventures_of_Vexx/Lately_Kind_of_Yeah_-_The_Lost_Adventures_of_Vexx_-_06_Bluegarden)" by [Lately Kind of Yeah](https://freemusicarchive.org/music/Lately_Kind_of_Yeah/) - From the [Free Music Archive](https://www.freemusicarchive.org/) - CC BY NC

Music: "[Door of the Alien](https://freemusicarchive.org/music/Lately_Kind_of_Yeah/Sampler_EP_Vol_11/10_Lately_Kind_of_Yeah_-_Door_of_the_Alien)" by [Lately Kind of Yeah](https://freemusicarchive.org/music/Lately_Kind_of_Yeah/) - From the [Free Music Archive](https://www.freemusicarchive.org/) - CC BY NC

Music: "[Take A Break](https://freemusicarchive.org/music/Loyalty_Freak_Music/ROLLER_DISCO_DANCE_DANCE/Loyalty_Freak_Music_-_ROLLER_DISCO_DANCE_DANCE_-_06_Take_A_Break)" by [Loyalty Freak Music](https://freemusicarchive.org/music/Loyalty_Freak_Music/) - From the [Free Music Archive](https://www.freemusicarchive.org/) - CC BY NC
