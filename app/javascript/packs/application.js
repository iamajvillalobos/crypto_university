console.log('Hello World from Webpacker')

import 'bootstrap'
import '../src/application.scss'
import fontawesome from '@fortawesome/fontawesome'
import solid from '@fortawesome/fontawesome-free-solid'
import brands from '@fortawesome/fontawesome-free-brands'
fontawesome.library.add(solid, brands)
