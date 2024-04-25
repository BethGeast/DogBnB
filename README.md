<h1>Mock Project week at Le Wagon, creating a clone of AirBnb.</h1>

<h3>Created from scratch, from idea/user stories/figma wireframe through to presenting app in production environment in under 5 days.</h3>
<br></br>

Web application 'DogBnB' - where you can browse and book various hotels/kennels for dogs if you need somewhere for your dog to stay whilst you are away.

<ul>
  <li>As a visitor, you are able to browse the properties listed on the site, using the search bar function to display venues located in a specific area, available between set dates, or by the number of guests you need them to be able to cater to.</li>
  <li>You are able to create an account through the site, so that you can then add your own property you would like to list, edit or remove an existing listing you have created, and/or place a booking for another venue.</li>
  <li>As a signed-in user, you are also able to view all the bookings you have placed and edit or delete these bookings as required.</li>
  <li>There is also a feature to add a venue to your 'favorites', bookmarking it to a saved list accessible through your account to revisit again at a later date - again you are able to remove these bookmarks from your favorites list if you no longer wish it to be there.</li>
  <li>Ability to view past reviews left for each listing, and option to add a review also.</li>
</ul>

<br></br>

<h3>Technical features</h3>
<ul>
  <li>Created with Ruby on Rails, with embedded Ruby, JavaScript, HTML and SCSS.</li>
  <li>ActiveRecord for database/schema.</li>
  <li>Postgresql for production environment database.</li>
  <li>Cloudinary and ActiveStorage for attaching photos to listings.</li>
  <li>Photo carousel display for each item on listing index, and modal overlay with carousel for photos on individual listing page.</li>
  <li>Simpleform and bootstrap for assisting with some frontend features (further SCSS styling added for improvements).</li>
  <li>Heroku for production hosting.</li>
  <li>Devise gem for user sign-in/sign-up feature.</li>
  <li>Calculation implemented in bookings form in order to quote the user the price they should expect to pay for the dates chosen in the date-picker.</li>
</ul>

<br></br>

<h4>Planned ongoing improvements work:</h4>
<ul>
  <li>Cloudinary not saving attached photos uploaded when in production environment - will possibly change cloud storage service used.</li>
  <li>Installation of pundit to prevent any user having access to edit or delete other user's listings.</li>
  <li>Improvement to favorites feature - change to streamline process, meaning user can click on heart button straight from homepage, adding to their favorites list without diversion, instead changing heart button to display as a filled heart if item has been added to their list.</li>
  <li>Chat feature in order to live chat between user and hosts.</li>
  <li>Map added to individual item display page with pin showing location of the venue.</li>
  <li>Attach photos to reviews left on individual listings and display cleanly.</li>
  <li>Date picker on individual item pages only display dates not already booked/only dates venue available, changing the date picker display to grey out unavailable dates.</li>
  <li>Ability to add number of guests to booking form and this would adjust price quote calculation as appropriate.</li>
</ul>
<br></br>
<p>- Beth and Simone</p>
