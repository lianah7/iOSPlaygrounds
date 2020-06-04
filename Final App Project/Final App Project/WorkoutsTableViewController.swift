//
//  WorkoutsTableViewController.swift
//  Final App Project
//
//  Created by Liana Hill on 4/22/20.
//  Copyright © 2020 Liana Hill. All rights reserved.
//

import UIKit

class WorkoutsTableViewController: UITableViewController {

   // var listOfExercises = ExerciseList()
    var workouts = [String: ExerciseList]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        workouts = [
            "Biceps": ExerciseList(exercises:
                ["Bicep Curls": Exercise(description: "Step 1: Grab a pair of weights. Step 2: Stand tall with your feet about shoulder-width apart and knees slightly bent. Step 3: Hold a dumbbell in each hand with an underhand grip.Start with your arms fully extended by your sides. Keeping your elbows in line with your torso, curl the weights up to your shoulders.Step 4: Squeeze your biceps at the top of the curl. Using a controlled motion, straighten your arms back to a fully extended position.Step 5: Do 10 reps and 2-3 sets.", image: UIImage()),
                 "Feet Elevated Push-Ups": Exercise(description: "Step 1: Place your toes on a sturdy, elevated surface - like a bench, box, or step - and position yourself in a plank position with your hands shoulder-width-apart. Step 2: Keep your hands flat and your shoulders above your wrists. Remember to keep your core and glutes engaged. And your body should be a straight line from head to toe. Step 3: Bend your elbows and lower your chest to the floor. Step 4: Once you get as low as you can, push through the palms of your hands to straighten your arms. Step 5: Do 10 reps of 3 sets.", image: UIImage()),
                 "Hammer Curls": Exercise(description: "Step 1: Grab a pair of weights. Step 2: Hold the weights down by your sides, with your palms facing inward and thumbs facing up. Step 3: Start with your elbows pulled into your sides and curl the weights up to your shoulders.Step 4: Finish the movement by extending your arms down slowly and with control. Step 5: Do 10 reps of 2-3 sets.", image: UIImage()),
                 "Isolated Single Arm Curls": Exercise(description: "Step 1: Grab a pair of weights. Step 2: Start with your arms extended, making a T-shape with your body, and with your weights in hand. Step 3: Hold the weights with an undergrip so your palms are facing up. Step 4: Curl one arm to about 90 degrees before returning the arm back down to be parallel with the ground. The other arm should stay extended parallel to the ground while the other curls. Step 5: Repeat the same steps with your other arm, alternating every time. Step 6; Do 10 reps of 2-3 sets on each arm.", image: UIImage()),
                 "Bent Over Row": Exercise(description: "Step 1: Grab a pair of weights. Step 2: Stand with your feet hip-width apart, holding a weight in each hand with your arms at your sides. Step 3: With your core engaged, hinge forward at the hips, push your butt back, and bend your knees slightly, so that your back is no lower than parallel to the floor. (Depending on your hamstring flexibility, you may not be able to bend so far over.) Gaze at the ground a few inches in front of your feet to keep your neck in a comfortable position. Step 4: Do a row by pulling the weights up toward your chest, keeping your elbows hugged close to your body, and squeezing your shoulder blades for two seconds at the top of the movement. Your elbows should go past your back as you bring the weight toward your chest. Step 5: Slowly lower the weights by extending your arms toward the floor. This is 1 rep. Step 6: Do 10-12 reps of 2-3 sets.", image: UIImage()),
                 "Upright Row": Exercise(description: "Step 1: Grab a pair of weights. Step 2: Stand with your feet hip-width apart, holding a weight in each hand with your arms in front of your body, palms facing you. Step 3: With your back straight, core engaged, and chest lifted, slowly lift your hands to shoulder height. Your elbows should extend out to the sides. Step 4: Squeeze your shoulder blades at the top and hold for a second. Step 5: Slowly lower your hands back to starting position. This is 1 rep.Step 6: Do 10-12 reps for 2-3 sets.", image: UIImage()),
                 "Zottoman Curls": Exercise(description: "Step 1: Grab a pair of weights. Step 2: With your dumbbells hanging by your side, turn your arms so your palms face forward. Step 3: Without moving your upper arms, bend your elbows and curl the dumbbells towards your shoulder. Step 4: Pause, then rotate the dumbbells so your palms face forward before slowly returning back to your starting position. This is 1 rep. Step 5: Do 5-10 reps of 2-3 sets.", image: UIImage()),
                 "Chin-Ups": Exercise(description: "This exercise requires a pull-up bar. Step 1: Place your hands about shoulder-width-apart on your pull-up bar. Make sure your palms are facing away from your body. Step 2: Start in a dead hang, and pull yourself up so that your chain reaches over the bar. Step 3: With control, lower yourself back down into a dead hang. That’s one rep. Step 4: Try for 5-10 reps for 2-3 sets. If that is too hard, try for 2-3 reps instead. Bonus: This is one variation of pull-ups. You could also widen your grip on your pull-up bar so your hands are wider than your shoulder-width. You can also adjust your grip so your palms face you, or rotate your grip.", image: UIImage())
            ]),
            "Triceps": ExerciseList(exercises:
                ["Diamond Push-Ups": Exercise(description: "This exercise does not require weights. Step 1: Start in a push-up position with your thumbs and index fingers of each hand touching to make a diamond shape. Step 2: While keeping your elbows as close to your side as possible, lower yourself down until your chest touches the back of your hands. Step 3: Keep everything tight throughout the movement. Step 4: Push back up to the starting position and repeat. Step 5: Do 10 reps and 2-3 sets. Tip: If this exercise is too hard, there are easier variations. Some include the Diamond Push-Up Against Wall, the Hands-Elevated Diamond Push-Up, and the Regular Push-Up on Floor.", image: UIImage()),
                 "Bodyweigth Tricep Dips": Exercise(description: "This exercise does not require weights. Step 1: Find a secure, chair, table, or bench, and place your hands shoulder-width-apart behind you with your fingers facing towards your body. Step 2: Bend your knees slightly.  Step 3: Straighten your arms without locking them, and then slowly bend your elbows and lower your body toward the floor, until your elbow is at about a 90-degree angle. Try not to push away from the bench. Keep your butt close to the bench. Step 4: Once your butt almost touches the ground, straighten your arms to push down on the bench. That’s 1 rep. Step 5: Do about 10-15 reps and 2-3 sets. Tip: Keep your heels on the floor and your elbows pointing directly behind your body (not flared out to the side).", image: UIImage()),
                 "Overhead Tricep Extensions": Exercise(description: "Step 1: Grab a pair of weights, but you’ll only need one for this exercise. Step 2: Hold one weight in both hands, extending it up overhead. You could do this sitting down on a bench, chair, or block, or you could also do this exercise standing up. Step 3: Keep your biceps close to your ears and elbows pointing forward as you lower the weight behind your head until the elbows are at about 90-degree angles. Step 4: Straighten the arms, contracting the triceps and repeat for 1-3 sets of 10 reps. Tip: Keep the abs engaged throughout the exercise and avoid arching the back.", image: UIImage()),
                 "Push-Ups": Exercise(description: "This exercise does not require weights. Step 1: Start in a high plank with your palms flat, hands shoulder-width apart, shoulders stacked directly above your wrists, legs extended behind you, and your core and glutes engaged. Step 2: Bend your elbows and lower your chest to the floor. Drop to your knees if needed. Step 3: Push through the palms of your hands to straighten your arms. That's 1 rep.Step 4: Try for 5-10 reps for three sets.", image: UIImage()),
                 "Lateral Plank Walk": Exercise(description: "This exercise does not require weights. Step 1: Start in a high plank with your palms flat, hands shoulder-width apart, shoulders directly above your wrists, legs extended behind you, and your core and glutes engaged. Step 2: Step right, leading with your right hand and right foot, maintaining a plank as you move. That’s 1 rep. Step 3: Continue moving to the right for 10 steps. Step 4: Do your reps in one direction, and then repeat in the opposite direction. Step 5: Do 2-3 sets on each side.", image: UIImage()),
                 "Burpee with Push Up": Exercise(description: "This exercise does not need weights. Step 1: Stand with your feet shoulder-width apart and arms by your sides. Step 2: Squat and reach forward to place your hands on the floor, shoulder-width apart. Step 3: Kick your legs straight out behind you into a high plank with your hands stacked underneath your shoulders. Step 4: Bend your elbows to lower your chest to the floor, then straighten them to do a push-up. Step 5: Jump your feet toward your hands so your lower body is in a squat. Jump straight up into the air, reaching your arms overhead. That's 1 rep. Step 6: Do 5-10 reps of 2-3 sets. Bonus: This exercise also works your glutes, core, and legs.", image: UIImage()),
                 "Dumbbell Floor Press": Exercise(description: "Step 1: Grab a pair of weights. Step 2: Lie on your back with your knees bent and feet placed flat on the ground. Step 3: Hold a dumbbell in each hand, and extend your arms upward over your chest, palms facing toward each other. Step 4: Slowly bend your arms and lower them to your sides until your triceps touch the ground. Your elbows should form a 45 degree angle with your body. Step 5: Slowly reverse the movement and return to start. That's one rep. Step 6: Complete 8 to 10 reps of 2-3 sets.", image: UIImage()),
                 "Single-Arm Tricep Kickbacks": Exercise(description: "Step 1: Grab a pair of weights. Step 2: Stand with your knees bent and lean forward slightly, with a dumbbell in each hand. Step 3: Bend both elbows to bring the dumbbells to your sides. Step 4: Press one dumbbell back, and as you straighten your arm, squeeze your triceps. Return to start. Step 5: Repeat on the other side. That's one rep.Step 6: Complete 8-10 reps of 2-3 sets.", image: UIImage())
            ]),
//            "Shoulders": ExerciseList(exercises:
//                ["Lateral Raise": Exercise(description: "Bend those elbows", image: UIImage()),
//                 "Pull-ups": Exercise(description: "Need a chin up bar", image: UIImage()),
//                 "Pull-ups": Exercise(description: "Need a chin up bar", image: UIImage()),
//                 "Pull-ups": Exercise(description: "Need a chin up bar", image: UIImage()),
//                 "Pull-ups": Exercise(description: "Need a chin up bar", image: UIImage()),
//                 "Pull-ups": Exercise(description: "Need a chin up bar", image: UIImage()),
//                 "Pull-ups": Exercise(description: "Need a chin up bar", image: UIImage()),
//                 "pully-thingy": Exercise(description: "Need a chin up bar", image: UIImage())
//            ]),
//            "Chest": ExerciseList(exercises:
//                ["Pushups": Exercise(description: "Bend those elbows", image: UIImage()),
//                 "Pull-ups": Exercise(description: "Need a chin up bar", image: UIImage()),
//                 "Pull-ups": Exercise(description: "Need a chin up bar", image: UIImage()),
//                 "Pull-ups": Exercise(description: "Need a chin up bar", image: UIImage()),
//                 "Pull-ups": Exercise(description: "Need a chin up bar", image: UIImage()),
//                 "Pull-ups": Exercise(description: "Need a chin up bar", image: UIImage()),
//                 "Pull-ups": Exercise(description: "Need a chin up bar", image: UIImage()),
//                 "Pull-ups": Exercise(description: "Need a chin up bar", image: UIImage())
//            ]),
            "Abs": ExerciseList(exercises:
                ["Plank": Exercise(description: "Step 1: Lying face down on the ground, prop yourself up in a forearm plank position. Step 2: Make sure your elbows are directly underneath your shoulders, and that your hands are balled into fists. Step 3: Keep your back and butt flat and level. Step 3: Try holding for 30 seconds per set. Try for 2-3 sets. Tip: To make it harder, push yourself to hold the plank for longer. If this is too hard, try going up into a push up position and hold your plank there.", image: UIImage()),
                "Lemon Squeezers": Exercise(description: "Step 1: Lie flat on the ground with your hands above your head. Step 2: Lift your upper body off the ground. At the same time, bend your legs and use your core to lift them towards your chest. Bring your hands from above your head to be parallel to each other on either side of your body. Step 3: Extend yourself back towards the ground, bringing your arms back over your head and straightening your legs as they lower to the ground. That’s 1 rep. Step 4: Try 5-10 reps of 2-3 sets. If this is too hard, lower your number of reps. Tip: To make it more difficult, don’t let your legs or arms touch the ground as you go through your reps. You could also keep your arms by your side instead of going over your head. Bonus: Another variable is V-Ups, where instead of bending your legs, keep them squeezed tightly so they are straight. Then, lift your legs and upper body so your face almost touches your legs and your hands touch your toes to make a “V” shape. There is another variable of the V-Up. Instead of bringing both arms and legs up at the same time, alternate with one leg with the opposite arm (If you bring your right leg up, lift your left arm, and vice versa).", image: UIImage()),
                "Bird Dog": Exercise(description: "Step 1: Start on your hands and knees. Make sure your shoulders are over your hands, your hips over your knees, and that your head is in a neutral position with your face towards the ground. Step 2: Extend your right arm and left leg simultaneously. Keep your foot flexed as you kick back and your palm should face the ground. Step 3: Pause for up to 3 seconds when your arm and leg are at the same height as your torso. Step 4: Bend your arm and leg and bring it back towards your body in a crunch. Step 5: Gently tap your elbow to your knee underneath your body. That’s 1 rep. Step 6: Continue on this side for 10-15 reps. Step 7: Repeat with your left arm and right leg for the same amount of reps. Step 8: Do 2-3 sets on each side.", image: UIImage()),
                "Plank Tap": Exercise(description: "This exercise does not need weights. Step 1: Start in a high plank with your palms flat, hands shoulder-width apart, shoulders stacked directly above your wrists, legs extended behind you, and your core and glutes engaged. Step 2: Tap your right hand to your left shoulder while engaging your core and glutes to keep your hips as still as possible. Step 3: Do the same thing with your left hand to right shoulder. Continue, alternating sides. Step 4: Do three sets of 10 reps.", image: UIImage()),
                "Plank Up-Down": Exercise(description: "This exercise does not require weights. Step 1: Start in a high plank with your palms flat, hands shoulder-width apart, shoulders stacked directly above your wrists, legs extended behind you, and your core and glutes engaged. Step 2: Place your feet hip-width apart. Step 3: Lower your left arm so that your forearm is on the floor. Then, do the same with your right so that you're in a forearm plank. Step 4: Reverse to return to a high plank. That’s one rep. Step 5: Do ten reps for three sets. Tip: As you move, keep your hips as still as possible. To make this easier, try widening your legs a little more.", image: UIImage()),
                "Downward Dog to Push-Up": Exercise(description: "This exercise does not need weights. Step 1: Start in a downward dog position. To get into a downward dog, start from an all-fours position with wrists under your shoulders and knees under your hips. Engage your core, lift your knees, and straighten both legs as your head drops naturally between your biceps and you come into an inverted V-shape. In downward dog, your arms and back should be straight and your hips piked up to the ceiling. Your heels do not need to touch the floor, but you should feel a nice stretch in the back of your legs. Step 2: From this position, lift your right hand and reach back to tap your left toes. Allow your torso to naturally rotate open so you can tap your toes. If you can't reach your toes, tap your shin or knee. Step 3: Return to downward dog and roll forward into a high plank or modified plank (by gently lowering your knees to the floor). Step 4: From your high plank or modified plank, do a push-up by bending both arms at the elbows and lowering your chest toward the floor in a smooth movement. Step 5: Push back up to return to your plank, then pike your hips to return to your downward dog. Now lift your left hand and tap your right toes. Step 6: After you've completed the toe tap, roll forward into a plank and do another push-up. Step 7: Continue your downward dog, to toe tap, to push-up progression for 5-10 reps for three sets. Bonus: This exercise also strengthens your triceps.", image: UIImage()),
                "Body Saw": Exercise(description: "This exercise does not require weights. Step 1: Start in a forearm plank with your forearms on the floor, elbows directly underneath your shoulders, hands facing forward so that your arms are parallel, and legs extended behind you. Step 2: Tuck your tailbone and engage your core, butt, and quads. Step 3: Rock forward on your forearms so your shoulders come in front of your elbows, and you come to the very tips of your toes. Step 4: Focus on moving as far forward as you can without piking your hips or losing your core engagement. Step 5: Now push in the other direction, rocking as far back as possible straightening your forearms slightly, and rolling onto the balls of your feet. Again, focus on maintaining core engagement and not piking your hips. Step 6: Continue to rock forward and back for 10 reps for three sets. Bonus: This exercise also strengthens your glutes.", image: UIImage()),
                "Inchworm": Exercise(description: "This exercise does not require weights. Step 1: Stand tall with your feet hip-width apart and arms at your sides. Step 2: Bend at your waist and place your hands on the floor. Step 3: Walk your hands forward to come into a high plank with your hands flat, wrists stacked under your shoulders, and your core, quads, and butt engaged. Pause for a second. Step 4: Walk your hands back to your feet and stand to return to start. That's 1 rep. Step 5: Repeat for 5-10 reps for 2-3 sets. Bonus: To make this harder, add a push-up when you are in the high plank position.", image: UIImage())
            ]),
            "Obliques": ExerciseList(exercises:
                ["Side Plank": Exercise(description: "This exercise does not need weights. Step 1: Lie on your right side with your right hand directly underneath your right shoulder. Step 2: Extend your legs and stack your left foot on top of your right, and then squeeze your abs and glutes to lift your hips off the floor. Step 3: Extend your left hand straight up toward the ceiling. Step 4: Hold here for 30 seconds to a minute. Step 5: Switch to the left side and repeat the same process but with the left side. Step 6: Repeat holding for thirty seconds to a minute on each side twice.", image: UIImage()),
                 "Side Plank Dips": Exercise(description: "This exercise does not require weights. Step 1: Start in a side plank. Step 2: Drop your hips toward the floor and raise back to starting position or a little higher if you can. That’s 1 rep. Step 3: Try for 5-15 reps for 2-3 sets on each side. ", image: UIImage()),
                 "Sit-Up Twists": Exercise(description: "This exercise does not require weights. Step 1: Lie on your back with your knees bent and feet flat to the floor. Step 2: Place your hands behind your head, engage your core and do a full sit-up. At the top of the sit-up, bring your right elbow to your left knee and twist your body toward that side. Step 3: Lower back down to start. That’s 1 rep. Step 5: Repeat this movement alternating sides each time. Step 6: Try for 5-15 reps for 2-3 sets.", image: UIImage()),
                 "Standing Side Crunch": Exercise(description: "This exercise does not require weights. Step 1: Stand with your feet shoulder-width apart. Place your right hand close to your right ear. Step 2: Raise your right knee on the side of your body while bringing your right elbow down to meet it. Step 3: Raise your arm back up into the air as you straighten your leg and lower your foot back down to the ground. That’s 1 rep. Step 4: Do 10-15 reps on each side for 2-3 sets.", image: UIImage()),
                 "Russian Twists": Exercise(description: "This exercise requires a medicine ball. Step 1: Sit up with your legs out in front of you, knees bent and your heels on the floor, your back at a 45-degree angle to the floor. Step 2: Hold a medicine ball or dumbbell (try 8 to 10 pounds) with both hands by your stomach. Step 3: Keep your back straight and the medicine ball in close to your torso as you twist to the right. That’s 1 rep. Step 4: Twist to the left side, and continue alternating sides. Step 5: Try for 10-15 reps for 2-3 sets.", image: UIImage()),
                 "Spidermans": Exercise(description: "This exercise does not require weights. Step 1: Start in a high plank, arms extended and your hands under your shoulders, with your core engaged. Step 2: Bring your left knee to your left elbow. Use your upper body to turn toward your knee to perform what looks like a side crunch. That’s 1 rep. Step 3: Continue the movement, alternating sides. Step 4: Do 10 reps on each side for 2-3 sets.", image: UIImage()),
                 "Side Bends": Exercise(description: "This exercise requires a dumbbell. Step 1: Stand with feet shoulder-width apart, holding a medium-to-heavy dumbbell in your right hand. Step 2: Engage your core and bend at your waist to the right toward the floor. Let the weight guide you down slowly. Step 3: Pulling from your core, bring your body back to the start position. That’s 1 rep. Step 4: Try for 5-10 reps for 2-3 sets on each side.", image: UIImage()),
                 "Forward Lunge with Rotation": Exercise(description: "This exercise requires a medicine ball. Step 1: Stand with your feet hip-width apart. Hold a medicine ball in both hands with arms extended out in front of your chest. Step 2: Lunge forward with your left leg. As you bend your knees, rotate your torso to the left, making sure to keep your arms straight. Step 3: Rotate back to center, and push off your front heel to return to start. That’s 1 rep. Step 4: Continue this movement alternating legs. Step 5: Try for 5-10 reps for 2-3 sets on each side.", image: UIImage())
            ]),
            "Glutes": ExerciseList(exercises:
                ["Plank Jack": Exercise(description: "This exercise does not need weights. Step 1: Start in a high plank with your palms flat, hands shoulder-width apart, shoulders stacked directly above your wrists, legs extended behind you, and your core and glutes engaged. Step 2: Jump your feet out and in (like jumping jacks). Try not to let your butt and hips bounce as you jump. Step 3: Continue for thirty seconds to a minute. Step 4: Once the time is up, take a rest for two minutes before doing another set. Step 5: Try aiming for 3-4 sets. Bonus: This exercise also strengthens your core and triceps.", image: UIImage()),
                 "Burpees": Exercise(description: "Step 1: Stand with your feet shoulder-width apart and arms by your sides. Step 2: Squat and reach forward to place your hands on the floor, shoulder-width apart. Step 3: Kick your legs straight out behind you into a high plank with your hands stacked underneath your shoulders. Step 4: Jump your feet toward your hands so your lower body is in a squat. Jump straight up into the air, reaching your arms overhead. That's 1 rep. Step 6: Do 5-10 reps of 2-3 sets.", image: UIImage()),
                 "Squats": Exercise(description: "Need a chin up bar", image: UIImage()),
                 "Lunges": Exercise(description: "Need a chin up bar", image: UIImage()),
                 "Glute Bridges": Exercise(description: "Need a chin up bar", image: UIImage()),
                 "Plank Leg Lifts": Exercise(description: "Need a chin up bar", image: UIImage()),
                 "The Clam": Exercise(description: "Need a chin up bar", image: UIImage()),
                 "Candlestick Jump": Exercise(description: "Need a chin up bar", image: UIImage())
            ]),
            "Quads": ExerciseList(exercises:
                ["Pushups": Exercise(description: "Bend those elbows", image: UIImage()),
                 "Pull-ups": Exercise(description: "Need a chin up bar", image: UIImage()),
                 "Pull-ups": Exercise(description: "Need a chin up bar", image: UIImage()),
                 "Pull-ups": Exercise(description: "Need a chin up bar", image: UIImage()),
                 "Pull-ups": Exercise(description: "Need a chin up bar", image: UIImage()),
                 "Pull-ups": Exercise(description: "Need a chin up bar", image: UIImage()),
                 "Pull-ups": Exercise(description: "Need a chin up bar", image: UIImage()),
                 "Pull-ups": Exercise(description: "Need a chin up bar", image: UIImage())
            ]),
            "Hamstrings": ExerciseList(exercises:
                ["Pushups": Exercise(description: "Bend those elbows", image: UIImage()),
                 "Pull-ups": Exercise(description: "Need a chin up bar", image: UIImage()),
                 "Pull-ups": Exercise(description: "Need a chin up bar", image: UIImage()),
                 "Pull-ups": Exercise(description: "Need a chin up bar", image: UIImage()),
                 "Pull-ups": Exercise(description: "Need a chin up bar", image: UIImage()),
                 "Pull-ups": Exercise(description: "Need a chin up bar", image: UIImage()),
                 "Pull-ups": Exercise(description: "Need a chin up bar", image: UIImage()),
                 "Pull-ups": Exercise(description: "Need a chin up bar", image: UIImage())
            ]),
            "Calves": ExerciseList(exercises:
                ["Calf Raises": Exercise(description: "Bend those elbows", image: UIImage()),
                 "Pull-ups": Exercise(description: "Need a chin up bar", image: UIImage()),
                 "Pull-ups": Exercise(description: "Need a chin up bar", image: UIImage()),
                 "Pull-ups": Exercise(description: "Need a chin up bar", image: UIImage()),
                 "Pull-ups": Exercise(description: "Need a chin up bar", image: UIImage()),
                 "Pull-ups": Exercise(description: "Need a chin up bar", image: UIImage()),
                 "Pull-ups": Exercise(description: "Need a chin up bar", image: UIImage()),
                 "Pull-ups": Exercise(description: "Need a chin up bar", image: UIImage()),
                 "Pull-ups": Exercise(description: "Need a chin up bar", image: UIImage())
            ])
        ]
            
      

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return workouts.keys.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "workouts", for: indexPath)
        let bodyParts = Array(workouts.keys)
        cell.textLabel?.text = bodyParts[indexPath.row]
        
        // Configure the cell...

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let bodyParts = Array(workouts.keys)
        if segue.identifier == "exercises" {
            if let exerciseViewController = segue.destination as? ExerciseTableViewController,
            let cell = sender as? UITableViewCell,
            let indexPath = self.tableView.indexPath(for: cell),
            let exercise = workouts[bodyParts[indexPath.row]] {
                exerciseViewController.exerciseList = exercise
            
        }
    }
    

}
}
