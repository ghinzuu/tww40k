# tww40k
# TODO:
* base.html
    --> nav column
* Maitre de jeu page
* Player page
    --> html
             --> raw : done
             --> clean
    --> login/logout
    --> css
    --> features :
        --------
            player :
                read Pix
                read meta stats
            stats :          create/update       :
                             read                :
            talents :        create              :
                             read                :
                             delete              :
            heritage :       create              :
                             read                :
                             delete              :
            equipment :      create              :
                             read                :
                             delete              :
            network :        create              :
                             read all            :
                             create all          :
                             update all          :
                             delete all          :
                             delete?             :
            resource :       subcreate/subupdate :
                             subread             :
                             subdelete           :
            troop :          subcreate/subupdate :
                             subread             :
                             subdelete           :
            infrastructure : subcreate/subupdate :
                             subread             :
                             subdelete           :
            barrack :        subcreate/subupdate :
                             subread             :
                             subdelete           :
            construction :   subcreate/subupdate :
                             subread             :
                             subdelete           :
            contact :        subcreate/subupdate :
                             subread             :
                             subdelete           :
            command :        create              :
                             read                :
                             delete              :
            result :         create              :
                             read                :
                             delete              :

    --> sql-db
            --> done
            --> to test
    --> python
    --> js
            --> pix upload/render <img src="{{ url_for('static', filename='img/my_image.jpg') }}">


* Map page
* pnj page


# CMD
flask --app tww40k run
flask --app tww40k init-db
