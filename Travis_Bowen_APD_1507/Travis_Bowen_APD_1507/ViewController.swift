//
//  ViewController.swift
//  Travis_Bowen_APD_1507
//
//  Created by Travis Bowen on 7/14/15.
//  Copyright (c) 2015 Travis Bowen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchResultsUpdating{
    
   
    
    //Setting variables
    @IBOutlet weak var scrollView: UIScrollView!
    var dataArray : [MedicalInfo] = []
    var filteredData = [MedicalInfo]()
    @IBOutlet weak var tableview: UITableView!
    var resultSearchController = UISearchController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Adding medical info
        let medical1 : MedicalInfo = MedicalInfo()
        medical1.name = "Abdominal Pain"
        medical1.symptoms = "Seek immediate medical care if you have pain and tenderness to the touch in the lower right abdomen with fever and/or vomiting. These may be signs of appendicitis.  You are pregnant and have abdominal pain or vaginal bleeding. This may be a sign of an ectopic pregnancy or miscarriage."
        medical1.steps = "1. Treat Symptoms.  For heartburn take an over-the-counter antacid or acid reducer.  For constipation, take a mild stool softener or laxative.  For pain, take acetaminophen (Aspirin Free Anacin, Liquiprin, Panadol, Tylenol). Avoid NSAIDs such as aspirin, ibuprofen (Advil, Midol, Motrin), or naproxen (Naprosyn, Aleve, Anaprox, Naprelan), because they can cause stomach irritation or bleeding.  2. When to call a doctor.  Has severe abdominal pain or pain that lasts several days.  Has nausea, fever, or inability to keep food down for several days.  Has bloody stools.  Has painful urination.  Has blood in the urine.  Cannot pass stools, especially if also vomiting.  Has difficulty breathing.  Had an injury to the abdomen in the days before the pain started.  Has heartburn that isn't relieved by over-the-counter drugs or last longer than two weeks.  3. When to call 911.  Call 911 if the person: Vomits blood.  Has severe difficulty breathing."
        
        
        let medical2 : MedicalInfo = MedicalInfo()
        medical2.name = "Abdominal Pain in Children"
        medical2.symptoms = "Call 911 if the child is not moving or is too weak to stand."
        medical2.steps = "1. Have your child rest.  Avoid activity, especially after eating.  2. Treat symptoms.  Provide clear fluids to sip, such as water, broth, or fruit juice diluted with water.  Serve bland foods, such as saltine crackers, plain bread, dry toast, rice, gelatin, or applesauce.  Avoid spicy or greasy foods and caffeinated or carbonated drinks until 48 hours after all symptoms have gone away.  Encourage the child to have a bowel movement.  Ask your child’s doctor before giving any medicine for abdominal pain. Drugs can mask or worsen the pain.  3.  When to call 911.  Call your child’s doctor immediately if your child has any of the following: Persistent pain on the right side of the abdomen, which could be an appendicitis.  Pain confined to one part of the abdomen.  Severe or rapidly worsening abdominal pain or pain that doesn’t go away within 24 hours.  Pain or tenderness when you press on the belly.  A swollen abdomen or an abdomen that is rigid to the touch.  Pain in the groin, or pain or swelling in a testicle.  Unexplained fever.  Lots of vomiting or diarrhea.  Bleeding from the rectum.  Blood in the stool or vomit.  A recent abdominal injury."
        
        
        let medical3 : MedicalInfo = MedicalInfo()
        medical3.name = "Alcohol Intoxication"
        medical3.symptoms = "Call 911 if the person has these symptoms of alcohol poisoning.  Mental confusion or unconsciousness.  Repeated vomiting.  Seizures.  Slow or irregular breathing.  Low body temperature.  Pale, clammy, or bluish skin"
        medical3.steps = "1. Stop further drinking.  Leave the place where the alcohol is, or put the alcohol away.  Coffee, cold showers, and other traditional remedies don't work.  2. Keep the person safe.  Never allow someone to drive when they are drunk.  Keep the person away from machinery, bicycles, skateboards, swimming pools, and other hazards.  Watch for signs of alcohol poisoning."
        
        
        let medical4 : MedicalInfo = MedicalInfo()
        medical4.name = "Allergic Reaction"
        medical4.symptoms = "Call 911 now if the person has had severe reactions in the past or has any of these symptoms: Difficulty breathing or wheezing.  Tightness in the throat or a feeling that the airways are closing.  Hoarseness or trouble speaking.  Swollen lips, tongue, or throat.  Nausea, abdominal pain, or vomiting.  Fast heartbeat or pulse.  Anxiety or dizziness.  Loss of consciousness.  Other symptoms of a severe allergic reaction (anaphylaxis)."
        medical4.steps = "1. Treat symptoms.  For mild allergy symptoms, such as hay fever or hives, give an over-the-counter (OTC) antihistamine.  For stuffy nose, give an OTC decongestant.  For itchy, watery eyes, use OTC allergy eye drops.  For itchy allergic rash, apply cold compresses and an OTC hydrocortisone cream.  2. Follow up.  Watch for worsening symptoms, including signs of anaphylaxis."
        
        
        let medical5 : MedicalInfo = MedicalInfo()
        medical5.name = "Amputation"
        medical5.symptoms = "Loss of limb."
        medical5.steps = "1. Call 911.  2. Stop the bleeding.  Wash your hands with soap and water, if possible.  Have the injured person lie down, if possible. Don’t reposition the person if you suspect a head, neck, back, or leg injury.  Elevate the injured area.  Apply steady, direct pressure to the wound for 15 minutes. You can do this up to three times. If there’s an object in the wound, apply pressure around it, not directly over it.  If blood soaks through, apply another covering over the first one. Don’t take the first one off.  Use a tourniquet or compression bandage only if bleeding is severe and not stopped with direct pressure.  3. Check for and treat shock.  With the person still lying flat, raise feet 12 inches.  Cover with coat or blanket.  Calm the person as much as possible until medical help arrives.  4. Clean and protect wound.  Wrap or cover the injured area with sterile dressing or clean cloth.  5. Save amputated part.  In some cases, the amputated part can be reattached.  If possible, rinse with clean water to remove dirt or debris. Do not use soap or scrub.  Place in a clean, plastic bag.  Pack the bag in ice. Take it with you to the hospital."
        
        
        let medical6 : MedicalInfo = MedicalInfo()
        medical6.name = "Animal Bites"
        medical6.symptoms = "Call 911 if the person has been seriously wounded.  Bleeding can't be stopped after 10 minutes of firm and steady pressure.  Bleeding is severe.  Blood spurts from the wound."
        medical6.steps = "1. Stop bleeding.  Apply direct pressure until bleeding stops.  2. Clean and protect.  For a wound or superficial scratch from an animal bite: Gently clean with soap and warm water. Rinse for several minutes after cleaning.  Apply antibiotic cream to reduce risk of infection, and cover with a sterile bandage.  3. Get help.  Get medical help immediately for any animal bite that is more than a superficial scratch or if the animal was a wild animal or stray, regardless of the severity of the injury.  If the animal's owner is available, find out if the animal's rabies shots are up-to-date. Give this information to your health care provider.  If the animal was a stray or wild animal, call the local health department or animal control immediately.  4. Follow up.  The health care provider will make sure the wound is thoroughly clean and may prescribe antibiotics.  If there is any risk of rabies infection, the health care provider will recommend anti-rabies treatment.  The person may require stitches, depending on the location and severity of the animal bite.  The person may also require a tetanus shot or booster.  The health care provider may recommend ibuprofen or acetaminophen for pain."
        
        
        let medical7 : MedicalInfo = MedicalInfo()
        medical7.name = "Ankle Fracture"
        medical7.symptoms = "Call 911 if the person is bleeding uncontrollably.  Has a numb, cold, pale, or blue ankle.  Is unable to move the foot.  Is in shock (faint, pale, with rapid shallow breathing).  "
        medical7.steps = "1. Leave protruding bone alone.  If a bone has broken through the skin, don't push it back into place. Cover the area with a clean bandage and seek immediate medical attention.  2. Stop bleeding.  Apply steady, direct pressure with a cloth for 15 minutes and elevate the wound. If blood soaks through, apply another cloth over the first and seek immediate medical attention.  3. Control swelling.  Remove ankle bracelets or toe rings.  If medical attention is not immediately available, apply RICE therapy: Rest ankle by having the person stay off of it. Use crutches if necessary.  Ice area. Use an ice pack or wrap the ice in a clean cloth. Do not place ice directly against the skin.  Compress by wrapping ankle lightly (not tightly) with an ace bandage or elastic ankle brace. Do not try to align the bones.  Elevate ankle above heart level.  4. Manage pain and inflammation.  Give an over-the-counter pain medication such as ibuprofen or aspirin. Avoid ibuprofen and other NSAIDs if the person has heart failure or kidney failure. Do NOT give aspirin to anyone under the age of 18.  5. See a doctor as soon as possible.  6. Follow up.  The doctor will examine and X-ray the ankle, leg, and foot. The doctor also may do a CT or CAT scan, or an MRI to determine if surgery is needed.  If needed, the doctor will set the broken bone back in place and immobilize the ankle with a splint, cast, or other device. Surgery may be necessary to repair the break."
        
        
        let medical8 : MedicalInfo = MedicalInfo()
        medical8.name = "Ankle Sprain"
        medical8.symptoms = "Go to the emergency room if: Pain, bruising, or swelling is severe, the ankle looks deformed or seems dislocated, or the person can't put any weight on the ankle."
        medical8.steps = "1. Control swelling.  Remove ankle bracelets or toe rings.  Do RICE therapy: Rest the ankle. Use crutches if necessary.  Ice the ankle for 20 to 30 minutes several times a day for the first 2 days.  Compress by wrapping the ankle lightly -- not tightly -- with an Ace bandage or elastic ankle brace.  Elevate the ankle above heart level for the first 48 hours.  2. Manage pain and inflammation.  Take ibuprofen (Advil, Motrin), acetaminophen (Tylenol), or aspirin for pain. But check with your doctor first if you have any medical conditions or take any other medicines.  3. See a health care provider.  Make an appointment as soon as possible for any ankle sprain, mild or severe. Do not give aspirin to anyone younger than 18 unless told to do so by a doctor."
        
        
        let medical9 : MedicalInfo = MedicalInfo()
        medical9.name = "Aspirin Poisoning"
        medical9.symptoms = "Call 911 if the person is unconscious.  Having convulsions.  Not breathing."
        medical9.steps = "1. Get help immediately.  For an overdose of aspirin: Call Poison Control at 800-222-1222 for instructions, even if there are no signs of poisoning.  If possible, provide this information: all medications the person may have taken, how much the person may have taken, and when.  2. Follow Up.  For small amounts, you may need to watch the person carefully at home.  For a larger amount, you may need to take the person to a hospital emergency department.  Take the aspirin bottle to show the health care provider.  At the hospital, health care providers will check the level of aspirin in the blood and will do testing to determine the aspirin's toxic effect on the body. They may give activated charcoal or other medication to slow or prevent toxicity."
        
        
        let medical10 : MedicalInfo = MedicalInfo()
        medical10.name = "Asthma Attack"
        medical10.symptoms = "Call 911 if symptoms of acute attack include difficulty talking or walking because of shortness of breath or lips or fingernails turning blue."
        medical10.steps = " 1. Follow the person’s asthma plan, if possible.  Find out if the person has an individualized asthma action plan from a health care provider.  If so, follow its directions for giving asthma medication and seeking medical help for acute asthma attack. 2. Give asthma first aid.  If the person doesn't have an asthma plan: Sit the person upright comfortably and loosen tight clothing.  If the person has asthma medication, such as an inhaler, assist in using it.  If the person doesn’t have an inhaler, use one from a first aid kit or borrow someone else’s.  3. Use inhaler With a spacer, if possible.  Remove cap and shake inhaler well.  Insert inhaler into spacer.  Have the person breathe out completely and put mouth tightly around spacer mouthpiece.  Press inhaler once to deliver a puff.  Have the person breathe in slowly through the mouth and then hold breath for 10 seconds.  Give a total of four puffs, waiting about a minute between each puff.   4. Use inhaler without a spacer, if necessary.  Remove the inhaler cap and shake well.  Have the person breathe out all the way and seal lips tightly around inhaler mouthpiece.  As the person starts to breathe in slowly, press down on inhaler one time.  The person should keep breathing in as slowly and deeply as possible (about five to seven seconds) and then hold breath for 10 seconds.  Give a total of four puffs, waiting about one minute between each puff.  5. Continue using inhaler if breathing is still a problem.  After four puffs, wait four minutes. If the person still has trouble breathing, give another set of four puffs.  If there’s still little or no improvement, give four puffs every four minutes until ambulance arrives. If the person is having a severe attack, give up to six to eight puffs every five minutes.  6. Monitor the person until help arrives.  Do not mistake drowsiness as a sign of improvement; it could mean asthma is worsening.  Do not assume the person’s asthma is improving if you no longer hear wheezing.  7. Follow up.  An emergency room doctor will check the severity of the attack and provide treatment, including medications."
        
        
        let medical11 : MedicalInfo = MedicalInfo()
        medical11.name = "Asthma Attack in Children"
        medical11.symptoms = "Call 911 if the child is having a hard time breathing.  Constantly coughing.  Unable to talk, eat, or play.  Vomiting.  Turning blue in the lips or fingers.  Convulsing while breathing (using stomach muscles excessively to breathe)."
        medical11.steps = " 1. Notify the child’s health care provider immediately.  2. Follow the child’s asthma plan, if possible.  Find out if the child has an individualized asthma action plan from a health care provider.  If so, follow directions for giving asthma medication and seeking medical help for acute asthma attack.  Bring a copy of the child’s asthma action plan to show the ER staff.  3. Give quick-relief medicine.  If the child has no asthma action plan but has an inhaler: Sit child upright comfortably and loosen tight clothing.  Give one puff of quick-relief medicine from child's inhaler, always with a spacer.  Ask child to take four breaths from spacer.  Give three more puffs, with four breaths between each.  Wait four minutes. If there’s no improvement, give another four puffs.  If the child doesn’t have an inhaler, use one from a first aid kit. If you are sure this is an asthma attack and the child has used quick-relief asthma medicine before (albuterol), you can borrow someone else’s.  4. Follow Up.  An emergency room doctor will check the severity of the attack and provide treatment, including medication."
        
        
        let medical12 : MedicalInfo = MedicalInfo()
        medical12.name = "Asthma Attack in Pregnancy"
        medical12.symptoms = "Call 911 if symptoms of an acute asthma attack in pregnancy include: Difficulty talking, walking, or thinking because of shortness of breath.  Neck and ribs moving in during breathing.  Blue- or gray-looking skin.  Peak flow reading below 60% of personal best.  Decrease in fetal kick count if the baby is in distress."
        medical12.steps = "1. Follow the Woman’s Asthma Plan, if Possible.  2. Give Asthma First Aid.  If the woman doesn't have an asthma action plan: Sit the woman upright comfortably and loosen tight clothing.  If woman has asthma medication, such as an inhaler, help her use it.  If woman doesn't have an inhaler, use one from a first aid kit or borrow someone else’s.  4. Use Inhaler With a Spacer, if Possible.  5. Use Inhaler Without a Spacer, if Necessary.  6. Continue Using Inhaler if Breathing Is Still a Problem.  7. Monitor the Woman Until Help Arrives.  8. Follow Up.  An emergency room doctor may give the woman oxygen, inhaled medications, and intravenous steroids. All can be given without risk to the baby."
        
        
        let medical13 : MedicalInfo = MedicalInfo()
        medical13.name = "Black Eye"
        medical13.symptoms = "Call a health care provider immediately if: The person's vision is blurred, double, or lost in either eye.  The person is in severe pain.  You suspect a serious eye injury.  There is drainage or bleeding on the white part of the eye or drainage from the eye.  The eyeball looks abnormal.  Skin around the eye is split or there is a cut on the eyelid."
        medical13.steps = "1. Treat Symptoms.  Apply ice to the area. Don't press on the eye.  For pain, give acetaminophen (Tylenol). Don't give aspirin or ibuprofen (Advil, Motrin), because they can increase bleeding.  2. Get Medical Help.  See a health care provider to make sure there is no further damage to the eye.  3. Follow Up.  Continue icing the area several times a day for 1 or 2 days.  After 1 or 2 days, apply warm compresses instead."
        
        
        let medical14 : MedicalInfo = MedicalInfo()
        medical14.name = "Bleeding During Pregnancy"
        medical14.symptoms = "Call 911 if you have: Heavy vaginal bleeding.  Severe pain.  Frequent contractions."
        medical14.steps = " 1. Monitor Bleeding.  Put on a sanitary pad or panty liner to keep track of the amount of bleeding.  2. Prevent Further Bleeding.  Don’t insert anything into the vagina. Avoid sex, tampons, or douching while you’re bleeding.  3. Get Help.  Call your health care provider immediately to find out if you should go the hospital or doctor’s office.  Tell the doctor or hospital staff if you have heavy bleeding, abdominal pain, cramping, fever, chills, or contractions, or if you feel lightheaded or faint.  Put any tissue passed from the vagina into a clean container. Give it to your doctor for examination.  A health care provider will examine you for signs of dangerous blood loss and may do tests to confirm the health of your pregnancy."
        
        
        let medical15 : MedicalInfo = MedicalInfo()
        medical15.name = "Blisters"
        medical15.symptoms = ""
        medical15.steps = "1. For a Blister That Has Not Popped.  Try not to pop or drain.  Leave uncovered or cover loosely with a bandage.  Try not to put pressure on area. If blister is in a pressure area such as the bottom of the foot, put donut-shaped moleskin on it.  2. For a Blister That Has Popped.  Wash the area with warm water and gentle soap. Do not use alcohol, hydrogen peroxide, or iodine.  Smooth down the skin flap that remains.  Apply antibiotic ointment.  Cover loosely with a sterile bandage or gauze.  3. When to Drain a Blister.  To drain a blister that is large, painful, or in an awkward spot: Wash the area.  Sterilize a needle with rubbing alcohol or soap and water.  Make a small hole at the edge of the blister. Gently squeeze out the fluid.  Wash the blister again and pat dry. Don’t remove the skin over the blister.  Smooth down the skin flap.  Apply antibiotic ointment.  Cover loosely with a sterile bandage or gauze.  4. Follow Up.  Change bandage daily and whenever it gets dirty or wet.  Avoid wearing shoes or doing the activity that caused the blister until it heals.  Wear thick socks or work gloves for blisters on feet or hands.  See a doctor for signs of infection, including pus, fever, red or warm skin around the blister, red streaks leading away from blister, swollen lymph glands, or increased pain or swelling, or if your last tetanus shot was more than 10 years ago."
        
        
        let medical16 : MedicalInfo = MedicalInfo()
        medical16.name = "Blood in Stool "
        medical16.symptoms = "Call 911 if bleeding is severe or there are clots.  Your child seems weak, faint, or very sick."
        medical16.steps = "1. Get Details.  Is the blood bright red or dark?  Has your baby eaten anything unusual or started any new medications? Foods such as tomatoes, beets, and artificial flavorings can cause reddish stools. Some antibiotics may also discolor stool.  2. Look for Other Symptoms.  Is the blood associated with diarrhea, vomiting, fever, or pain?  3. Call Your Pediatrician.  If there was very little blood and your baby seems otherwise healthy, call the pediatrician during normal office hours.  If your baby is under 12 weeks old; has black or tarry stools, bloody diarrhea, or blood mixed with mucus that looks like jelly; or if your baby seems sick, upset, or lethargic, call a pediatrician right away or go to the nearest emergency room."
        
        
        let medical17 : MedicalInfo = MedicalInfo()
        medical17.name = "Blood in Urine"
        medical17.symptoms = ""
        medical17.steps = "1. Get Help.  Call your health care provider to set up a prompt appointment, even if you only see blood once in the urine. Inform the staff about the blood when you call.  Symptoms include blood clots or red, pink, orange, or brown color in urine.  2. Monitor Symptoms.  Be ready to answer these questions for the health care provider.  What color was the blood in the urine?  Were there blood clots? If so, what shape?  Was there blood at the beginning or end of the urine stream or during the entire stream?  Was it painful for the person to urinate? Where was the pain located (for example, back, side, groin, or genital area)?  3. Follow up with doctor if needed."
        
        
        let medical18 : MedicalInfo = MedicalInfo()
        medical18.name = "Breathing Problems in Children"
        medical18.symptoms = "Call 911 if they are gasping for breath.  Can't cry or talk because of breathing trouble.  Grunts when breathing.  Has blue lips.  May have a small object caught in her throat.  Is breathing very fast (this is also a symptom of fever).  Looks very sick."
        medical18.steps = "1. Prevent Dehydration.  Give babies plenty of breast milk or formula.  Give older children water or juice mixed with water.  Children may eat more slowly because of breathing problems, so give them plenty of time.  2. Relieve Congestion.  Thin mucus in a stuffy nose with saline nose drops.  Remove mucus from a baby's nose with a suction bulb.  3. Ease Breathing.  Use a cool-mist humidifier near the child to add moisture to the air.  Sit in the bathroom with a hot shower running and have your child breathe in the steam.  4. Make the Child Comfortable.  Let the child rest.  Give children's-formula acetaminophen (Tylenol) to bring down a fever.  Keep the child away from cigarette smoke."
        
        
        let medical19 : MedicalInfo = MedicalInfo()
        medical19.name = "Broken Arm"
        medical19.symptoms = "Call 911 if the person is seriously injured.  You suspect an injury to the person’s head, neck, or back.  Bone is sticking out of the skin.  Bleeding doesn't stop after several minutes of firm pressure.  Blood spurts from the wound."
        medical19.steps = "1. Stop the Bleeding if Necessary.  Apply firm pressure to the wound area with a clean cloth until bleeding stops.  If bone is pushing through skin, do not touch it or try to put it back in place.  2. Reduce Swelling.  Apply ice.  Elevate the arm above the heart, if possible.  3. Immobilize Arm.  For less serious injuries: Cut away the sleeve if it cannot be removed without moving the injured arm.  If you can without moving the arm, carefully tape it to rolled-up newspaper or a ruler with first aid tape.  4. See a Health Care Provider Immediately."
        
        
        let medical20 : MedicalInfo = MedicalInfo()
        medical20.name = "Broken Arm in Children"
        medical20.symptoms = "Call 911 if the bone has broken through the skin.  The arm is bleeding heavily.  The arm is numb, white, or blue.  There is deformity to the arm."
        medical20.steps = "1. Examine the Injury.  Do not try to straighten the arm.  If the bone has broken through the skin, do not touch it. Drape gauze or a clean diaper over the injury, apply pressure to control the bleeding, and get emergency help.  2. Make a Splint.  Don't try to straighten the arm. Try to keep it still and don't move it.  Put some soft padding around the arm, like a soft cloth.  Splint the wrapped arm with a ruler, newspaper, or magazine to keep it from moving too much.  Gently wrap cloth or tape around the splint and wrapping to hold them together.  Make sure the splint and wrapping aren't cutting off circulation.  3. Get Help.  If your child may have a broken arm, go to the pediatrician's office or the emergency room."
        
        
        let medical21 : MedicalInfo = MedicalInfo()
        medical21.name = "Broken Finger"
        medical21.symptoms = ""
        medical21.steps = "1. Immobilize the Finger.  Tape the broken finger to an adjacent non-broken finger.  2. Control Swelling.  Cool the finger by applying ice that is wrapped in a towel -- don't apply ice directly to the skin; it can cause a burn.  3. Get Help.  Call a health care provider or go to a hospital emergency room immediately so the broken finger can be X-rayed and properly set. Without treatment, it may not heal properly and could lead to a permanent deformity.  4. Treat Symptoms.  Use an over-the-counter pain medicine such as acetaminophen (Tylenol) or ibuprofen (Advil, Motrin)."
        
        
        let medical22 : MedicalInfo = MedicalInfo()
        medical22.name = "Broken Finger in Children"
        medical22.symptoms = "Call 911 if the bone has broken through the skin.  The finger is bleeding heavily.  The finger is numb, white, or blue.  The finger has been amputated or the nail bed is affected."
        medical22.steps = "1. Examine the Injury.  Do not try to straighten the finger.  If the bone has broken through the skin, do not touch it. Drape gauze or a clean diaper over the injury, control the bleeding, and get emergency help.  2. Make a Splint.   Wrap the finger with a soft cloth.  Splint the wrapped finger by taping it to an adjacent non-broken finger.  Make sure the splint and wrapping aren't cutting off circulation. Watch for signs such as numbness, warmth, or changes in skin color.  3. Reduce Swelling.  Ice the finger for a few minutes at a time. Wrap ice in a towel or cloth to avoid injuring the skin.  If possible, keep your child's hand elevated.  4. Get Help."
        
        
        let medical23 : MedicalInfo = MedicalInfo()
        medical23.name = "Broken Foot"
        medical23.symptoms = "Call 911 if the person is seriously injured.  Bone is sticking out of skin.  Bleeding doesn't stop after several minutes of firm pressure.  Blood spurts from the wound."
        medical23.steps = "1. Stop Bleeding if Necessary.  Apply pressure to wound area with a clean cloth until bleeding stops.  If the bone is pushing through the skin, do not touch it or try to put it back in place.  2. Control Swelling.  Apply ice.  Elevate the foot and have the person stay off it as much as possible.  3. Get Medical Help Immediately.  See a health care provider. Foot injuries can develop into long-lasting problems if they go untreated."
        
        
        let medical24 : MedicalInfo = MedicalInfo()
        medical24.name = "Broken Hand"
        medical24.symptoms = "Call 911 if the person is seriously injured or unconscious.  Hand is numb or cold.  Skin under the fingernail is blue.  Bone is sticking out of the skin.  Bleeding doesn't stop after several minutes of firm pressure.  Blood spurts from the wound."
        medical24.steps = "1. Stop Bleeding if Necessary.  Apply firm pressure with a clean cloth until bleeding stops.  If the bone is pushing through the skin, do not touch it or try to put it back in place.  2. Control Swelling.  Apply an ice pack (do not put ice directly against the skin).  If possible, remove any jewelry immediately.  3. Immobilize the Hand.  If the person's hand is numb or cold or the skin under the fingernails is blue, do not move the hand or arm. Otherwise: Have the person bend the arm at the elbow.  Do not try to straighten the hand if it bent or deformed.  Tie a splint on the lower arm with fabric or elastic bandages. Cardboard, rolled-up newspaper, or other stiff material can be used as a splint.  Make a sling and place the person's arm in it. Tie the sling around his or her neck.  4. See a Health Care Provider Immediately."
        
        
        let medical25 : MedicalInfo = MedicalInfo()
        medical25.name = "Broken Hip"
        medical25.symptoms = "Pale, clammy skin.  Glazed eyes.  Sweating.  Rapid and shallow breathing.  Dizziness.  Vomiting."
        medical25.steps = "1. Call 911.  2. Do CPR, if Necessary.  If the person is not breathing or you can't find a pulse, start CPR.2. Protect From Further Injury.  Keep the person lying on his or her back.  Tie legs together at ankle and knee. Legs may be straight or bent.  3. Immobilize Leg.  If you have been trained in how to apply a splint, do it."
        
        
        let medical26 : MedicalInfo = MedicalInfo()
        medical26.name = "Broken Jaw"
        medical26.symptoms = "Call 911 if the person has: Uncontrolled bleeding.  Difficulty breathing.  A possible spine injury (do not move the person).  Or if the person is: In shock (faint, pale, rapid shallow breathing)."
        medical26.steps = "1. Get Medical Help Immediately.  Go to a hospital emergency room.  2. Prevent Choking.  Allow any blood in the mouth to dribble out or have the person spit it into a handkerchief.  Without touching the roots, gently remove any broken or lost teeth from the mouth and place them in cold milk, salt water, or saliva. Take the broken teeth in their solution to the health care provider or emergency room with you.  3. Immobilize Jaw.  Do not attempt to align the jaws.  Make a bandage out of a handkerchief, scarf, or necktie, and tie it around the jaw and over the top of the head to keep the jaw from moving. The bandage should be easily removable in case the person starts to vomit.  4. Control Swelling.  Apply cold compresses."
        
        
        let medical27 : MedicalInfo = MedicalInfo()
        medical27.name = "Broken Leg"
        medical27.symptoms = "Call 911 if you think a thighbone is broken.  A bone has punctured the skin."
        medical27.steps = "1. Reduce Swelling and Avoid Further Injury.  Keep the injured leg as still as possible. Do not let the person bear any weight on the leg.  Apply ice.  Keep the leg raised with pillows or cushions.  2. Seek Medical Care Immediately.  Take the person to see a health care provider. If you think a thighbone is broken or you are unable to move the person, call 911 and have the person taken to the hospital."
        
        
        let medical28 : MedicalInfo = MedicalInfo()
        medical28.name = "Broken Nose"
        medical28.symptoms = ""
        medical28.steps = "1. When to See a Health Care Provider.  Go to a hospital emergency room or see a health care provider immediately if: You cannot stop the nose from bleeding.  The nostril or nasal septum is crooked or out of place.  The person has clear drainage from one or both nostrils or a grapelike swelling inside the nose on the septum.  2. Treat Symptoms.  Apply ice for pain and swelling.  Have the person rest and keep the head elevated even when sleeping.  The person should avoid blowing his or her nose.  Give acetaminophen for pain. Do not give NSAIDs such as ibuprofen or aspirin."
        
        
        let medical29 : MedicalInfo = MedicalInfo()
        medical29.name = "Broken Toe"
        medical29.symptoms = "Symptoms of a broken toe include: pain, swelling, bruising, and difficulty walking."
        medical29.steps = " 1. Prevent Swelling and Further Injury.  Stay off the foot as much as possible.  Avoid movement or pressure that causes pain.  Apply ice up to 20 minutes at a time. Wrap it in a towel; do not apply directly to skin.  Keep the foot elevated as often as possible, especially the first 2 days after injury, to help control pain and swelling.  For pain, take acetaminophen (Tylenol) or ibuprofen (Advil, Motrin).  2. Get Help."
        
        
        let medical30 : MedicalInfo = MedicalInfo()
        medical30.name = "Bruises"
        medical30.symptoms = ""
        medical30.steps = " 1. Reduce Bruising and Swelling.  Ice the area on and off for the first 24-48 hours.  Apply ice for about 15 minutes at a time, and always put something like a towel or wash cloth between the ice and your skin.  Rest the affected area.  If possible, elevate the affected area.  2. Treat Symptoms.  For pain, take acetaminophen (Tylenol), or ibuprofen (Advil, Motrin), or naproxen (Alleve).  3. When to Call a Doctor.  If bruise is accompanied by extreme pain, swelling or redness.  If the person is taking a blood-thinning medication.  If bruises appear on skin for no apparent reason.  The bruise in on the face or head.  You can’t move a joint.  You may have a broken bone."
        
        
        let medical31 : MedicalInfo = MedicalInfo()
        medical31.name = "Bruises in Children"
        medical31.symptoms = "Call Doctor If: The bruised area seems very painful, swollen, or infected.  Your child has a bruise after a serious accident or head or abdominal injury.  Your child has a large number of bruises or unexplained bruises.  Your child has a fever."
        medical31.steps = "1. Apply Ice.  Wrap a cold pack in a towel or washcloth and hold it against the bruise for 10 to 15 minutes.  Repeat, but no more than once an hour.  Do not hold ice or anything frozen directly against a child's skin.  2. Elevate the Area."
        
        
        let medical32 : MedicalInfo = MedicalInfo()
        medical32.name = "Burns"
        medical32.symptoms = "Call 911 if burn penetrates all layers of skin.  Skin is leathery or charred looking, with white, brown, or black patches.  Burn blister is larger than two inches or oozes.  Hands, feet, face, or genitals are burned.  The person is an infant or a senior."
        medical32.steps = "For First-Degree Burns (Affecting Top Layer of Skin)  1. Cool Burn.  Hold burned skin under cool (not cold) running water or immerse in cool water until pain subsides.  Use compresses if running water isn’t available.  2. Protect Burn.  Cover with sterile, non-adhesive bandage or clean cloth.  Do not apply butter or ointments, which can cause infection.  3. Treat Pain.  Give over-the-counter pain reliever such as ibuprofen (Advil, Motrin), acetaminophen (Tylenol), or naproxen (Aleve).  4. When to See a Doctor.  Seek medical help if: You see signs of infection, like increased pain, redness, swelling, fever, or oozing.  The person needs tetanus or booster shot, depending on date of last injection. Tetanus booster should be given every 10 years.  Redness and pain last more than a few hours.  Pain worsens."
        
        
        let medical33 : MedicalInfo = MedicalInfo()
        medical33.name = "Burns in Children"
        medical33.symptoms = "Call doctor if the bruised area seems very painful, swollen, or infected.  Your child has a bruise after a serious accident or head or abdominal injury.  Your child has a large number of bruises or unexplained bruises.  Your child has a fever."
        medical33.steps = "1. Apply Ice.  Wrap a cold pack in a towel or washcloth and hold it against the bruise for 10 to 15 minutes.  Repeat, but no more than once an hour.  Do not hold ice or anything frozen directly against a child's skin.  2. Elevate the Area.  If possible, raise the bruised area above the heart to reduce swelling.  3. Reduce Pain.  Use infant or child-formula acetaminophen (Tylenol). Don't use ibuprofen (Advil, Motrin) because it may prolong bleeding.  Follow the dosing instructions on the label.  If your child has never taken this medication before, call your pediatrician first.  Don't give aspirin to a child under 16."
        
        
        let medical34 : MedicalInfo = MedicalInfo()
        medical34.name = "Chest Pain"
        medical34.symptoms = "Call 911 if discomfort, pressure, heaviness, or pain in the chest, arm, or below the breastbone.  Discomfort radiating to the back, jaw, throat, or arm.  Fullness, indigestion, or choking feeling (may feel like heartburn).  Sweating, nausea, vomiting, or dizziness.  Extreme weakness, anxiety, or shortness of breath.  Rapid or irregular heartbeats."
        medical34.steps = "1. Treat With Nitroglycerin.  If the person gets chest pain and has been prescribed nitroglycerin: Dissolve 1 nitroglycerin tablet under the tongue (or use nitroglycerin spray under the tongue).  Wait 5 minutes.  If the person still has angina, call 911.  If the person has been diagnosed with chronic stable angina: Dissolve 1 nitroglycerin tablet under the tongue (or use nitroglycerin spray under the tongue).  Repeat every 5 minutes until the person has taken 3 tablets in 15 minutes.  If the person still has angina after 3 doses, call 911."
        
        
        let medical35 : MedicalInfo = MedicalInfo()
        medical35.name = "Choking"
        medical35.symptoms = "Call 911 if the person is choking.  The person is unconscious."
        medical35.steps = " 1. Give Back Blows.  Give up to 5 blows between the shoulder blades with the heel of your hand.  2. If Person Is Still Choking, Do Thrusts.  If the person is not pregnant or too obese, do abdominal thrusts: Stand behind the person and wrap your arms around the waist.  Place your clenched fist just above the person’s navel. Grab your fist with your other hand.  Quickly pull inward and upward.  Continue cycles of 5 back blows and 5 abdominal thrusts until the object is coughed up or the person starts to breathe or cough.  Take the object out of his mouth only if you can see it. Never do a finger sweep unless you can see the object in the person's mouth.  If the person is obese or pregnant, do high abdominal thrusts:  Stand behind the person, wrap your arms them, and position your hands at the base of the breast bone.  Quickly pull inward and upward.  Repeat until the object is dislodged.  3. Give CPR, if Necessary."
        
        
        let medical36 : MedicalInfo = MedicalInfo()
        medical36.name = "Choking in Children"
        medical36.symptoms = "Call 911 if unconscious.  Not able to breathe because something is blocking the airway or has caused it to close off.  Wheezing or gasping.  Not able to cry, talk, or make noise.  Turning blue in the face.  Grabbing at the throat.  Looking panicked."
        medical36.steps = "If the Child Is Unconscious: 1. Start CPR.  Move the child to the floor and start CPR. Take the object out of his mouth only if you can see it.  For a Child Younger Than 1 Year Who Is Conscious but Not Breathing: 1. Get the Child Into Position.  Hold the child face down on your forearm, supported by your thigh.  Keep the child's torso higher than the head  2. Give Forceful Blows.  Use the heel of your free hand to thump the child in between the shoulder blades up to five times 3. Turn the Child Over.  Turn the child face up, and keep supporting the head and neck. If the object is not out yet, go to step 4.  4. Press the Chest.  Place the child on a firm surface, which may still be your forearm.  Put two or three fingers in the center of the child's breastbone and push quickly up to five times.  Repeat the back thumping and chest pushes until the object comes out or the child loses consciousness.  If the child is still not breathing, open the airway by putting your thumb in the child's mouth and grasping the lower incisors or gums. The jaw should lift up so you can look for the object.  Do not try to pull the object out unless you see it clearly. You could accidentally push the object deeper in the child throat."
        
        
        let medical37 : MedicalInfo = MedicalInfo()
        medical37.name = "Concussion"
        medical37.symptoms = "Call 911 if person is vomiting repeatedly.  Has unequal pupils.  Is confused or agitated.  Has weakness on one side of the body.  Passes out or is unconscious.  Is very drowsy or unable to wake up.  Has neck pain after a fall.  Has slurred speech.  Has a seizure."
        medical37.steps = "1. Prevent Swelling and Further Injury.  Have the person stop activity and rest.  Apply ice wrapped in a washcloth.  2. Treat Symptoms.  For pain, take over-the-counter acetaminophen (Tylenol). Aspirin or ibuprofen (Advil, Motrin) may make bruising worse.  3. Monitor Symptoms.  If possible, stay with the person for 24 hours.  4. When to Call a Doctor.  Anyone with a suspected concussion should be seen by a doctor. Once discharged, seek immediate medical care again if any of these symptoms develop: A headache that seems to be getting worse.  Continued vomiting.  Increased drowsiness or dizziness.  Increased confusion."
        
        
        let medical38 : MedicalInfo = MedicalInfo()
        medical38.name = "Constipation"
        medical38.symptoms = "Call 911 if person has severe abdominal pain.  Has fever.  Is vomiting.  Has a swollen abdomen.  Is listless."
        medical38.steps = "1. Increase Fluids.  For infants 4 months or older: add small amounts of fruit juice, such as prune, pear, or apple juices.  For children 1 year or older: offer fruit juices and more water.  2. Increase Fiber.  For infants 4 months or older: add baby foods such as peas, beans, prunes, peaches, plums, and apricots.  For children 1 year or older: add fruits, vegetables such as peas, beans, and broccoli, and whole-grain foods such as brown rice, whole wheat bread, graham crackers. Four to five prunes a day is also a very good source of fiber.  Cut down on candies and sweets. Limit milk and cheese to 16-20 ounces. 3. See pediatrician if problem continues."
        
        
        let medical39 : MedicalInfo = MedicalInfo()
        medical39.name = "CPR for Adults"
        medical39.symptoms = "Call 911 if person collapses or becomes unresponsive."
        medical39.steps = "1. Check Responsiveness.  Tap the person's shoulder and shout, Are you OK? Look for normal breathing. Call 911 if there is no response.  Start Hands-Only CPR.  Hands-Only CPR should not be used for adults whose cardiac arrest is due to drug overdose, near-drowning, or an unwitnessed cardiac arrest. In these cases, do a conventional CPR combination of chest compressions and rescue breathing.  2. Do Chest Compressions.  Place the heel of your hand on the center of the person's chest.  Place the heel of your other hand on top of your first hand, lacing fingers together.  Keep arms straight and your shoulders directly over your hands.  Push hard and fast, compressing chest at least 2 inches.  Let chest rise completely before pushing down again.  Compress at least 100 times per minute.  3. Stop Only if: The person starts breathing normally.  A trained responder or emergency help takes over.  You are too exhausted to continue.  There is an automated external defibrillator (AED) to use.  4. Use an AED as Soon as One Is Available."
        
        
        let medical40 : MedicalInfo = MedicalInfo()
        medical40.name = "CPR for Children"
        medical40.symptoms = "Call 911 if child collapses or becomes unresponsive."
        medical40.steps = "1. Check to see if the child is conscious.  2. Check breathing.  3. Begin chest compressions if the child doesn’t respond and isn’t breathing: Carefully place the child on his/her back. For a baby, be careful not to tilt the head back too far. If you suspect a neck or head injury, roll the baby over, moving his/her entire body at once.  For a baby, place two fingers on breastbone. For a child, place heel of one hand on center of chest at nipple line. You also can push with one hand on top of the other.  For a child, press down about 2 inches. Make sure not to press on ribs, as they are fragile and prone to fracture.  For a baby, press down about 1 1/2 inches, about 1/3 to 1/2 the depth of chest. Make sure not to press on the end of the breastbone.  Do 30 chest compressions, at the rate of 100 per minute. Let the chest rise completely between pushes.  Check to see if the child has started breathing.  4. Do rescue breathing.  To open the airway, lift the child’s chin up with one hand. At the same time, tilt the head back by pushing down on the forehead with the other hand. Do not tilt the head back if the child is suspected of having a neck or head injury.  For a child, cover his mouth tightly with yours. Pinch the nose closed and give breaths.  For a baby, cover the mouth and nose with your mouth and give breaths.  Give the child two breaths, watching for the chest to rise each time. Each breath should take one second.  5. Repeat compressions and rescue breathing.  6. Use an AED as soon as one is available."
        
        
        let medical41 : MedicalInfo = MedicalInfo()
        medical41.name = "Cuts and Bleeding"
        medical41.symptoms = "Call 911 if a cut is bleeding severely.  Blood is spurting out.  Bleeding can't be stopped after 10 minutes of firm and steady pressure."
        medical41.steps = "1. Stop the Bleeding.  Apply direct pressure on the area.  2. Clean and Protect.  Clean the area with warm water and gentle soap.  Apply an antibiotic ointment to reduce chance of infection.  Put a sterile bandage on the area. In some people, antibiotic ointments may cause a rash. If this happens, stop using the ointment.  3. Call a Health Care Provider."
        
        
        let medical42 : MedicalInfo = MedicalInfo()
        medical42.name = "Cuts and Bleeding in Children"
        medical42.symptoms = "Call 911 if your child is bleeding heavily.  The wound is deep.  The edges of the wound are gaping.  The wound is spurting blood.  You can't stop the bleeding after 10 minutes of direct pressure.  An object has punctured the skin and is still in the body.  The cut involves the eye or the cartilage of the nose or ear."
        medical42.steps = "1. Clean the Wound.  Wash your hands.  Clean the wound with lots of cool water. Make sure all dirt and debris are removed.  Clean the area around the wound with mild soap and water.  2. Stop the Bleeding.  Cover the wound with gauze or a clean towel and press down with your palm.  If the gauze soaks through, don't remove it. Put another layer of gauze on top.  Keep up the pressure for a few minutes after the bleeding stops.  3. Treat the Wound.  Apply an antibacterial ointment to the area.  If the wound is minor and unlikely to get dirty, let it heal in the open air.  If the wound is likely to get dirty because it's on the hands or feet, put on a bandage."
        
        
        let medical43 : MedicalInfo = MedicalInfo()
        medical43.name = "Dehydration"
        medical43.symptoms = "Call 911 if person experiences extreme thirst.  Dry skin, mouth, and mucous membranes.  Little or no urination for 12 hours or more.  Increased heart rate and breathing.  Lethargy or fatigue.  Light-headedness, dizziness, or confusion.  Dehydration due to heat stroke."
        medical43.steps = "1. Replace Fluids.  For mild dehydration or while waiting for medical care for an adult with severe dehydration that is not due to heat stroke: The person should try to drink 2 quarts of fluid, such as water, juice, or sports drinks, in 2 to 4 hours. But it is better to drink small amounts of fluid often, because drinking too much fluid at once can bring on vomiting.  The person should drink at least 10 glasses of liquid a day to replace lost fluids.  If the person is elderly, fluid replacement may need to be done slowly. Consult a doctor.  If the person is vomiting, try ice chips, popsicles, and small sips of fluid.  If the person is recovering from diarrhea, consider that some sports drinks contain a lot of sugar, which can worsen diarrhea.  2. When to Call a Doctor for Mild Dehydration.  Seek medical help if: The person’s symptoms get worse or don't improve within 24 hours.  The person is elderly.  You think a prescription medication such as a diuretic caused the dehydration."
        
        
        let medical44 : MedicalInfo = MedicalInfo()
        medical44.name = "Dehydration in Children"
        medical44.symptoms = "Call 911 if child has extremely dry mouth or no tears.  Is lethargic.  Is older and does not urinate in 12 or more hours.  Isn't alert or able to think clearly.  Passes out.  Is too weak or dizzy to stand."
        medical44.steps = "1. Call a doctor.  2. Replace Fluids.  For dehydration in an infant up to 1 year old: If you breast-feed, nurse more often.  If you bottle feed, give your baby the usual amount of fluid, unless the baby is vomiting. If your baby is vomiting, give smaller amounts more frequently. For example, instead of 6 ounces every 4 hours, give 3 ounces every 2 hours. If she vomits more than once, call your doctor.  If your baby eats solid food, cereal, strained bananas, and mashed potatoes, also provide fluids.  Give an oral rehydration solution such as Pedialyte, if possible. It replaces salt, sugar, potassium, and other nutrients. Ask your doctor what type and quantity to use.  For mild dehydration in a child age 1 to 11: Give extra fluids in frequent, small sips, especially if the child is vomiting.  Choose clear soup, clear soda, or Pedialyte, if possible.  Give popsicles, ice chips, and cereal mixed with milk for added water or fluid.  Continue a regular diet."
        
        
        let medical45 : MedicalInfo = MedicalInfo()
        medical45.name = "Diarrhea"
        medical45.symptoms = "Call 911 if person is very dehydrated.  Has severe abdominal pain."
        medical45.steps = "1. Give an adult plenty of clear fluid, like fruit juices, soda, sports drinks and clear broth. Avoid milk or milk-based products, alcohol, apple juice, and caffeine while you have diarrhea and for 3-5 days after you get better. They may make diarrhea worse.  Give a child or infant frequent sips of a rehydration solution such as Pedialyte, Ceralyte, or Infalyte. Do not add salt tablets to a baby’s bottle.  Make sure the person drinks more fluids than they are losing through diarrhea. If they are unable to keep up with their losses, call a doctor.  2. Rest.  Have the person rest as needed and avoid strenuous exercise. Keep a sick child home from school or day care.  3. Ease Into Eating.  Feed an infant or child easily digested foods; the BRAT diet (bananas, rice, applesauce, and toast) is a good choice as soon as they can tolerate food.  For an adult, add semisolid and low-fiber foods gradually as diarrhea stops. Avoid spicy, greasy, or fatty foods."
        
        
        let medical46 : MedicalInfo = MedicalInfo()
        medical46.name = "Diarrhea in Children"
        medical46.symptoms = "Call 911 if child is not responding to touch or sounds.  Has skin that doesn't bounce back when pinched.  Is breathing fast.  Is confused."
        medical46.steps = "1. Give Fluids.  If your child is breastfeeding, continue nursing as usual.  Your doctor may want you to give your baby small amounts of oral electrolyte solution. Check the amount with your doctor.  Give toddlers oral electrolyte solution, ice chips, or clear broth. Encourage your child to take small frequent sips instead of drinking too much at once.  Offer your toddler popsicles made with oral electrolyte solution.  Don't give your child any anti-diarrhea medication unless your pediatrician tells you to.  2. Go Slowly.  Feed toddlers mild foods in their regular diet. Avoid spicy or fried foods.  Once the diarrhea stops, gradually return to a normal diet."
        
        
        let medical47 : MedicalInfo = MedicalInfo()
        medical47.name = "Dizziness"
        medical47.symptoms = "Call 911 if person has a change in vision or speech.  Chest pain.  Shortness of breath.  Rapid, irregular, or very slow heartbeat.  Convulsions or ongoing vomiting.  Dizziness that comes after a head injury.  Double vision.  Fainting or loss of consciousness.  Fever and stiff neck.  Inability to move an arm or leg.  Slurred speech.  Numbness or tingling."
        medical47.steps = "1. Treat Symptoms.  The person should sit down or lie still.  If the person gets light-headed when standing up, the person should stand up slowly.  Avoid sudden changes in position.  If the person is thirsty, have him or her drink fluids.  Avoid bright lights.  2. Call a health care professional if: This is the first time the person has been dizzy.  The dizziness is different than before or doesn't go away quickly."
        
        
        let medical48 : MedicalInfo = MedicalInfo()
        medical48.name = "Drowning"
        medical48.symptoms = "Call 911 if someone is drowning."
        medical48.steps = "1. Get help.  2. Move the person out of the water.  3. Check for breathing.  4. If the person is not breathing, check for pulse.  5. If There is No Pulse, Start CPR.  Carefully place person on back.  For an adult or child, place the heel of one hand on the center of the chest at the nipple line. You can also push with one hand on top of the other. For an infant, place two fingers on the breastbone.  For an adult or child, press down about 2 inches. Make sure not to press on ribs. For an infant, press down about 1 and 1/2 inches. Make sure not to press on the end of the breastbone.  Do 30 chest compressions, at the rate of 100 per minute or more. Let the chest rise completely between pushes.  Check to see if the person has started breathing."
        
        
        let medical49 : MedicalInfo = MedicalInfo()
        medical49.name = "Drowning in Children"
        medical49.symptoms = "Call 911 if child is having problems breathing or has stopped breathing as a result of being immersed or submerged in liquid. (Remember, children can drown in as little as one inch of water.)  Has had a near-drowning episode.  Place two fingers on the breastbone.  Begin rapidly pressing down on the chest about 11/2 inches deep and then releasing the pressure. Make sure you're not pressing on the end of the breastbone.  Do 30 chest compressions, at the rate of 100 per minute. Let the chest rise completely between pushes.  Check to see if the baby has started breathing. (Watch to see if the chest rises and falls on its own.)"
        medical49.steps = "1. Take child out of water.  2. Get help.  3. Check for breathing and responsiveness.  4.  If the Child Is Not Breathing, Start Rescue Breathing.  You do not need to remove water from the child's throat to start CPR.  Carefully place the child on his or her back on a firm surface.  If you suspect a neck or head injury, roll the child over by moving the entire body (head, neck, spine, and hips) together, keeping them all aligned.  Tilt the child's head back and lift the chin. If you suspect a neck injury, do not tilt the head, just open the jaw. For a baby, be careful not to tilt the head back too far.  With an infant, place your mouth over the baby's nose and mouth to form a tight seal.  With an older child, pinch the nose closed and put your mouth over the child's mouth, forming a tight seal.  Blow into the child's mouth for 1 second. The child's chest should rise when you do this.  Repeat the breath a second time.  5. Begin Chest Compressions.  Place the heel of one hand on the center of the chest in line with the nipples. You can put your other hand on top of that hand to help push.  Begin rapidly pressing down on the chest about 2 inches deep and then releasing the pressure. Make sure you're not pressing down on the child's ribs.  Do 30 chest compressions, at the rate of 100 per minute. Let the chest rise completely between pushes.  Check to see if the child has started breathing. (Watch to see if the chest rises and falls on its own.)"
        
        
        let medical50 : MedicalInfo = MedicalInfo()
        medical50.name = "Drug Allergy"
        medical50.symptoms = "Call 911 if person has difficulty breathing or wheezing.  Tightness in the throat or a feeling that the airways are closing.  Hoarseness or trouble speaking.  Swollen lips, tongue, or throat.  Nausea, abdominal pain, or vomiting.  Fast heartbeat or pulse.  Anxiety or dizziness.  Loss of consciousness.  Hives and trouble breathing.  Other symptoms of a severe allergic reaction (anaphylaxis).  Had severe reactions in the past."
        medical50.steps = "1. Stop Taking the Drug that Triggered the Reaction.  2. Control Itching.  For a mild reaction: Give an adult an over-the-counter antihistamine. Check with a doctor before giving an antihistamine to a child.  Use cool compresses on the area or have the person take cool showers.  Avoid strong soaps, detergents, and other chemicals.  Stay in a cool room. Have the person wear loose-fitting, lightweight clothes.  For a rash, apply calamine lotion."
        
        
        let medical51 : MedicalInfo = MedicalInfo()
        medical51.name = "Drug Overdose"
        medical51.symptoms = "Call 911 if the person has: Collapsed or stopped breathing."
        medical51.steps = "1. Beging CPR if necessary.  2. Contact Poison Control.  Call Poison Control at 800-222-1222 (in U.S.) even if the person has no symptoms.  Poison Control experts will advise you how to proceed.  Do not try to make the person vomit or give the person anything to eat or drink.  3. Collect Drug or Pills.  Give drug or pills the person may have taken to the emergency team, or take them to the emergency room or doctor's office."
        
        
        let medical52 : MedicalInfo = MedicalInfo()
        medical52.name = "Ear Infections"
        medical52.symptoms = "Call Doctor If: Your baby has symptoms of an ear infection and is younger than 6 months.  Your child has symptoms of an ear infection along with a fever of 102 F or higher, inconsolable crying, severe pain, or other symptoms of concern.  You see ear drainage, or the ear looks like it's sticking out."
        medical52.steps = "1. Use Child-Formula Pain Relievers.  Call a pediatrician before giving your child an infant- or child-strength over-the-counter pain reliever for the first time.  Give children's-formula acetaminophen (Tylenol) or ibuprofen (Advil, Motrin) if your child is older than 6 months. Follow the dosing instructions on the bottle or your pediatrician's suggestions.  Do not give aspirin to children under age 16.  2. Soothe the Ear.  Put a warm washcloth or water bottle on the ear.  3. Consider Pain-Relieving Eardrops.  Ask your pediatrician whether they might help your child.  Don't use eardrops without asking your pediatrician.  4. Observe Your Child.  If symptoms seem to be getting worse, call a pediatrician. Your child may need further treatment."
        
        
        let medical53 : MedicalInfo = MedicalInfo()
        medical53.name = "Eye Injuries"
        medical53.symptoms = "Call 911 if: An object such as a piece of glass or metal is sticking out of the eye."
        medical53.steps = "1. For Chemical burns.  Don't rub eyes.  Immediately wash out the eye with lots of water. Use whatever is closest -- water fountain, shower, garden hose.  Get medical help while you are doing this, or after 15 to 20 minutes of continuous flushing.  Don't bandage the eye.  2. For a Blow to the Eye.  Apply a cold compress, but don't put pressure on the eye.  Take over-the-counter acetaminophen (Tylenol) or ibuprofen (Advil, Motrin) for pain.  If there is bruising, bleeding, change in vision, or it hurts when your eye moves, see a doctor right away.  3. For a Foreign Particle in Eye.  Don't rub the eye.  Pull the upper lid down and blink repeatedly.  If particle is still there, rinse with eyewash.  If rinsing doesn't help, close eye, bandage it lightly, and see a doctor."
        
        
        let medical54 : MedicalInfo = MedicalInfo()
        medical54.name = "Eye Injuries in Children"
        medical54.symptoms = "Call 911 if the child has: An object such as a piece of glass or metal or a pencil stuck in an eye.  Problems seeing.  Uneven pupils.  Very bad eye pain.  Blood in an eye.  Nausea or vomiting after an eye injury.  Been in contact with chemicals."
        medical54.steps = "1. Clean Up.  Wash your hands.  2. Stop Rubbing.  Keep the child from rubbing the eye.  3. Rinse the Eye.  Hold the child's head over a sink, facing down and to the side, and hold the eye open.  Gently pour water over the eye for five minutes and see whether the object is out. Repeat up to two more times if the object does not come out of the eye.  If the object is still in the eye, put a light bandage over it and take the child to the emergency room."
        
        
        let medical55 : MedicalInfo = MedicalInfo()
        medical55.name = "Fainting"
        medical55.symptoms = "Call 911 if the person: Has blue lips or face.  An irregular or slow heartbeat.  Chest pain.  Difficulty breathing.  Is difficult to awaken.  Acts confused."
        medical55.steps = "1. Make the Person Safe.  Lay the person flat on his or her back.  Elevate the person's legs to restore blood flow to the brain.  Loosen tight clothing.  2. Try to Revive the Person.  Shake the person vigorously, tap briskly, or yell.  If the person doesn't respond, call 911 immediately.  3. Do Home Care for Simple Fainting.  If the person is alert, give fruit juice, especially if the person has not eaten in more than 6 hours or has diabetes.  Stay with the person until he or she is fully recovered.  4. Call a Health Care Provider."
        
        
        let medical56 : MedicalInfo = MedicalInfo()
        medical56.name = "Food Poisoning"
        medical56.symptoms = "Call 911 if: You think the food poisoning may be from seafood or mushrooms.  If the person is severely dehydrated."
        medical56.steps = " 1. Control Nausea and Vomiting.  Avoid solid foods until vomiting ends. Then eat light, bland foods, such as saltine crackers, bananas, rice, or bread.  Sipping liquids may help avoid vomiting.  Don’t eat fried, greasy, spicy, or sweet foods.  Don’t take anti-nausea or anti-diarrhea medication without asking your doctor. They may make some kinds of diarrhea worse. Your doctor may give you anti-nausea medication if you are at risk of being dehydrated.  2. Prevent Dehydration.  Drink clear fluids, starting with small sips and gradually drinking more.  If vomiting and diarrhea last more than 24 hours, drink an oral rehydration solution.  3. When to Call a Doctor.  Call a doctor immediately if symptoms include: Lasting more than 3 days.  Severe belly pain.  Fever.  Bloody diarrhea or dark stools.  Vomiting that is prolonged or bloody.  Signs of dehydration, such as dry mouth, decreased urination, dizziness, fatigue, or increased heart rate or breathing rate."
        
        
        let medical57 : MedicalInfo = MedicalInfo()
        medical57.name = "Frostbite"
        medical57.symptoms = "Call 911 if: A part of the person's body or skin is turning white and hard or black.  The person has lack of feeling in the area.  The person shows signs of hypothermia."
        medical57.steps = "1. Seek Medical Care Promptly.  See a doctor or go to a hospital emergency room.  2. Restore Warmth.  Until you can see a doctor: Get the person to a warm place and remove any wet clothing.  Unless absolutely necessary, the person should not walk on frostbitten toes or feet.  Do not rewarm the skin until you can keep it warm. Warming and then re-exposing the frostbitten area to cold air can cause worse damage.  Gently warm the area in warm water (not hot) or with wet heat until the skin appears red and warm.  If no water is nearby, breathe on the area through cupped hands and hold it next to your body.  Do not use direct heat from heating pads, radiator, or fires.  Do not rub or massage the skin or break blisters.  3. Bandage the Area.  Loosely apply dry, sterile dressings.  Put gauze or clean cotton balls between fingers or toes to keep them separated."
        
        
        let medical58 : MedicalInfo = MedicalInfo()
        medical58.name = "Heart Attack"
        medical58.symptoms = "Call 911 if person is experiencing chest discomfort that may last more than a few minutes or go away and come back. It may feel like squeezing, fullness, pressure, or pain.  Pain or discomfort in the upper body, including arm, left shoulder, back, neck, jaw, or below the breastbone.  Difficulty breathing or shortness of breath (with or without chest pain).  Sweating or cold sweat.  Indigestion, heartburn, nausea, or vomiting.  Light-headedness, dizziness, or extreme weakness.  Anxiety or rapid or irregular heartbeats."
        medical58.steps = "1. Wait for Emergency Help to Arrive.  Do not drive to the hospital unless you have no other option.  Ambulance personnel can start care as soon as they arrive.  If there is no history of aspirin allergy or bleeding, emergency response may ask the person to chew one 325 mg aspirin slowly.  2. Follow Up.  At the hospital, an emergency department doctor will examine the person and run tests to see if chest pain stems from a heart attack or another cause. Tests may include an electrocardiogram (ECG), chest X-ray, and blood tests.  Inform the person's doctor about the chest pain and ER visit."
        
        
        let medical59 : MedicalInfo = MedicalInfo()
        medical59.name = "Heat Stroke"
        medical59.symptoms = "Call 911 if the person has the following symptoms: Body temperature above 103° F.  Rapid pulse.  Reduced sweating.  Disorientation.  Unconsciousness.  Seizures.  Warm, red, dry skin."
        medical59.steps = "1. Call 911.  Heat stroke is a medical emergency. Seek immediate emergency care if you think someone might have heat stroke.  2. Lower Body Temperature Quickly While Waiting for Emergency Services to Arrive.  Get the person into air conditioning if possible or out of the sun and into the shade.  Spray the person with cool water, or apply cold wet cloths or ice packs to the armpits, neck, and groin. Fan air across the person to increase cooling. These methods help cool the person quickly.  Do not give the person anything to drink if the person is not alert or is vomitting.  3. Treat Symptoms.  If the person experiences seizures, keep him or her safe from injury.  If the person vomits, turn the person on his or her side to keep the airway open."
        
        
        let medical60 : MedicalInfo = MedicalInfo()
        medical60.name = "Insect Sting Allergy"
        medical60.symptoms = "Call 911 if the person has: Trouble breathing.  Feelings of faintness or dizziness.  Hives.  A swollen tongue.  A history of severe allergy reaction to insect stings."
        medical60.steps = "1. Remove the Stinger.  Scrape the area with a fingernail or use tweezers to remove it.  Don't pinch the stinger -- that can inject more venom.  2. Control Swelling.  Ice the area.  If you were stung on your arm or leg, elevate it.  Remove any tight-fitting jewelry from the area of the sting. As it swells, rings or bracelets might be difficult to remove.  3. Treat Symptoms.  For pain, take an over-the-counter painkiller like acetaminophen or ibuprofen. Do not give aspirin to anyone under age 18.  For itchiness, take an antihistamine. You can also apply a mixture of baking soda and water or calamine lotion."
        
        
        let medical61 : MedicalInfo = MedicalInfo()
        medical61.name = "Insect Stings and Bites"
        medical61.symptoms = "Call 911 if your child: Has been bitten or stung and has sudden hives, swelling in the face, difficulty breathing, dizziness, or fainting.  Had a serious allergic reaction to an insect bite or sting before."
        medical61.steps = "1. Remove the Stinger (for Honeybee Stings).  Honeybees are the only insects that leave a stinger in the skin. Scrape the area with a fingernail or credit card to remove it.  Don't pinch the stinger with your fingers or tweezers -- that can inject more venom.  2. Clean the Area.  Wash the bite or sting with mild soap and water.  3. Treat Symptoms.  Remove any tight jewelry from the area of the bite or sting. It could be hard to get off once the area swells.  Ice the area for 10 minutes and then remove the ice for 10 minutes. Then repeat.  If the sting was on an arm or leg, elevate the area.  Pain relievers that are formulated for babies or children, such as acetaminophen (Tylenol) or ibuprofen (Advil, Motrin) can help. Be sure to follow the dosing instructions on the bottle. If your child is under the recommended age, call a pediatrician.  An antihistamine formulated for children may help with swelling and itch. Call a pediatrician before using an antihistamine in infants or toddlers.  Apply a mixture of baking soda and water or calamine lotion for itch."
        
        
        let medical62 : MedicalInfo = MedicalInfo()
        medical62.name = "Nosebleeds"
        medical62.symptoms = "Bleeding from the nose."
        medical62.steps = "1. Stop the Bleeding.  Have the person sit up straight and lean forward slightly. Don't have the person lie down or tilt the head backward.  With thumb and index finger, firmly pinch the nose just below the bone up against the face.  Apply pressure for 5 minutes. Time yourself with a clock.  If bleeding continues after 5 minutes, repeat the process.  2. Call a Health Care Provider.  See a health care provider immediately if: Nosebleed doesn't stop after 10 minutes of home treatment.  The person is taking blood thinners, such as warfarin (Coumadin) or aspirin, or has a bleeding disorder.  Nosebleed happens after a severe head injury or a blow to the face.  3. Medical Treatment.  The health care provider may use specialized cotton material, insert a balloon in the nose, or use a special electrical tool to cauterize the blood vessels."
        
        
        let medical63 : MedicalInfo = MedicalInfo()
        medical63.name = "Panic Attack"
        medical63.symptoms = "Racing heart.  Feeling weak, faint, or dizzy.  Tingling or numbness in the hands and fingers.  Sense of terror, or impending doom or death.  Feeling sweaty or having chills.  Chest pains.  Breathing difficulties.  Feeling a loss of control."
        medical63.steps = "1. Calm the Person.  Ask the person what you can do to help.  Reassure the person that the attack will probably pass in a few minutes.  Encourage the person to take slow, even breaths.  Do not minimize the person's symptoms.  If unable to calm the person, take him or her to see a health care provider right away.  2. Follow Up.  See a health care provider if the person has had more than one panic attack. This can lead to problems such as depression, agoraphobia (fear of open or public spaces), or substance abuse."
        
        
        let medical64 : MedicalInfo = MedicalInfo()
        medical64.name = "Poison Ivy, Oak, or Sumac"
        medical64.symptoms = "Call 911 if the person has: Trouble swallowing or breathing.  Swelling, especially near the eyes or on the face."
        medical64.steps = "1. Wash Exposed Area.  Wash with warm soap and water.  Washing within 10 minutes can significantly reduce the chance of an allergic reaction.  2. Remove Contaminated Clothing.  Plant oil can continue to spread from clothing and shoes.  3. Ease Itching and Discomfort.  Apply cool compresses for 15 to 30 minutes at a time.  Avoid topical antihistamines, anesthetics like benzocaine, and antibiotic ointments, all of which may make skin more sensitive.  Have the person take oatmeal baths.  Apply calamine lotion.  If itchiness makes sleep difficult, give an oral antihistamine.  4. When to See a Doctor.  Get medical help if rash covers a large part of the person's body, or if the person has blisters or can't sleep."
        
        
        let medical65 : MedicalInfo = MedicalInfo()
        medical65.name = "Poisoning"
        medical65.symptoms = "Call the poison control center at 1-800-222-1222 if the person has done any of these things and is alert: Swallowed too much medicine or the wrong kind.  Inhaled poison.  Gotten poison on the skin or in the eye.  Swallowed a household product or other chemical."
        medical65.steps = "1. Treat Symptoms as Directed.  Follow the instructions of emergency personnel or poison control."
        
        
        let medical66 : MedicalInfo = MedicalInfo()
        medical66.name = "Poisoning in Children"
        medical66.symptoms = "Call 911 if the child has taken poison and: Is not breathing properly or having trouble breathing.  Is unconscious or not alert.  Has collapsed.  Is having seizures.  Poison has splashed on his face or eyes.  Is acting differently.  You have any concerns."
        medical66.steps = "1. Treat Symptoms as Directed.  Follow the instructions of emergency personnel or poison control."
        
        
        let medical67 : MedicalInfo = MedicalInfo()
        medical67.name = "Rape"
        medical67.symptoms = "Call 911 if the victim: Has sustained a serious injury.  Is unconscious."
        medical67.steps = "1. Ensure Victim's Safety.  Get the victim to a safe, secure place.  Call the police if there are still any signs of danger from the attacker.  2. Provide Support.  Make sure the victim is not left alone.  Your local rape crisis center can provide additional support and information. Call the National Sexual Assault Hotline at 800-656-HOPE (4673), and the call will be directed to a rape treatment center near you.  3. Do Not Clean Up Before Receiving Medical Attention.  To preserve evidence, the victim should not bathe, go to the bathroom, comb her hair, or change clothes until she has received a medical examination. Do not clean up anything at the site of the assault.  4. Seek Immediate Medical Attention at Doctor's Office or an Emergency Room.  If the victim has been raped, a doctor will use a rape kit to collect hair, semen, clothing fibers, and other evidence of the attacker's identity.  Even if the victim is not sure she wants to report the attack, it is still important to collect and preserve evidence so it can be accessed at a later date, if necessary.  If the victim wishes to report the attack, the hospital staff will call the police from the emergency room."
        
        
        let medical68 : MedicalInfo = MedicalInfo()
        medical68.name = "Seizure"
        medical68.symptoms = ""
        medical68.steps = "1. Prevent Choking.  Loosen clothing around the person's neck.  Roll the person on his or her side to keep the airway open.  Don't put anything into the person's mouth.  2. Protect From Injury.  Move sharp objects, such as glassware or furniture, away from the person.  Ask bystanders to give the person room.  Do not restrain or hold down the person.  3. Treatment.  If the person has a history of seizures, he or she may have medications to treat them. Give the medications according to the prescribed directions.  Medications or brain imaging may be needed at the hospital."
        
        
        let medical69 : MedicalInfo = MedicalInfo()
        medical69.name = "Snakebite"
        medical69.symptoms = "Call 911 if: There is any chance that the snake is venomous."
        medical69.steps = "1. Note the Snake's Appearance.  Be ready to describe the snake to emergency staff.  2. Protect the Person.  While waiting for medical help: Move the person beyond striking distance of the snake.  Have the person lie down with wound below the heart.  Keep the person still to keep venom from spreading.  Cover the wound with loose, sterile bandage.  Do not: Cut a bite wound.  Attempt to suck out venom.  Apply tourniquet, ice, or water.  Give the person alcohol or caffeinated drinks."
        
        
        let medical70 : MedicalInfo = MedicalInfo()
        medical70.name = "Stroke"
        medical70.symptoms = "Call 911 if the person has: Numbness or weakness of the face, arm, or legs -- especially on just one side of the body.  Slurred or unusual speech.  Trouble seeing in one or both eyes.  Trouble walking, dizziness, or balance problems.  Sudden confusion.  Severe headache."
        medical70.steps = "1. Note Time When Symptoms First Appeared.  Tell emergency personnel the exact time when you first noticed symptoms.  Depending on the type of stroke, there is a medicine that may reduce long-term effects if given within four and a half hours of the first symptom appearing. Sooner is better.  If the person is diabetic, check the blood glucose (sugar) level. Treat low glucose with a glucose tablet, glass of orange juice or other sugary drink or food, or a glucagon injection (if the person is not able to swallow)."
        
        
        let medical71 : MedicalInfo = MedicalInfo()
        medical71.name = "Sunburn"
        medical71.symptoms = "Call 911 if the person: Does not seem to be responding appropriately.  Has a seizure, visual changes, or any other neurologic symptoms; these could be symptoms of severe heat illness."
        medical71.steps = "1. Rehydrate.  Replace body fluids with water, juice, or sports drinks.  2. Treat Symptoms.  Apply aloe or over-the-counter moisturizing lotion to skin as directed.  To soothe and cool skin, bathe in lukewarm water or apply cool compresses to the area.  For pain, take ibuprofen (Advil, Motrin) or acetaminophen (Tylenol)."
        
        
        let medical72 : MedicalInfo = MedicalInfo()
        medical72.name = "Tick Removal"
        medical72.symptoms = ""
        medical72.steps = "1. Remove Tick.  If the tick is attached to the person's skin, remove it immediately: Wearing gloves, grasp the tick with clean tweezers as close to the skin as possible to remove the head and mouthparts.  Pull the tick straight out gently and steadily. Do not twist.  Do not try to remove tick with a hot match or petroleum jelly. This could cause the tick to regurgitate infected fluids into the wound.  Save the tick in a container of alcohol to show the doctor.  2. Cleanse and Protect the Area.  Wash hands and clean the bite area with warm water and gentle soap.  Apply alcohol to the bite wound to prevent infection.  3. See a Health Care Provider.  See a health care provider immediately if the tick has burrowed into skin or if the head, mouthparts, or other tick remains cannot be removed."

        
        
        //Adding info to array
        dataArray.append(medical1)
        dataArray.append(medical2)
        dataArray.append(medical3)
        dataArray.append(medical4)
        dataArray.append(medical5)
        dataArray.append(medical6)
        dataArray.append(medical7)
        dataArray.append(medical8)
        dataArray.append(medical9)
        dataArray.append(medical10)
        dataArray.append(medical11)
        dataArray.append(medical12)
        dataArray.append(medical13)
        dataArray.append(medical14)
        dataArray.append(medical15)
        dataArray.append(medical16)
        dataArray.append(medical17)
        dataArray.append(medical18)
        dataArray.append(medical19)
        dataArray.append(medical20)
        dataArray.append(medical21)
        dataArray.append(medical22)
        dataArray.append(medical23)
        dataArray.append(medical24)
        dataArray.append(medical25)
        dataArray.append(medical26)
        dataArray.append(medical27)
        dataArray.append(medical28)
        dataArray.append(medical29)
        dataArray.append(medical30)
        dataArray.append(medical31)
        dataArray.append(medical32)
        dataArray.append(medical33)
        dataArray.append(medical34)
        dataArray.append(medical35)
        dataArray.append(medical36)
        dataArray.append(medical37)
        dataArray.append(medical38)
        dataArray.append(medical39)
        dataArray.append(medical40)
        dataArray.append(medical41)
        dataArray.append(medical42)
        dataArray.append(medical43)
        dataArray.append(medical44)
        dataArray.append(medical45)
        dataArray.append(medical46)
        dataArray.append(medical47)
        dataArray.append(medical48)
        dataArray.append(medical49)
        dataArray.append(medical50)
        dataArray.append(medical51)
        dataArray.append(medical52)
        dataArray.append(medical53)
        dataArray.append(medical54)
        dataArray.append(medical55)
        dataArray.append(medical56)
        dataArray.append(medical57)
        dataArray.append(medical58)
        dataArray.append(medical59)
        dataArray.append(medical60)
        dataArray.append(medical61)
        dataArray.append(medical62)
        dataArray.append(medical63)
        dataArray.append(medical64)
        dataArray.append(medical65)
        dataArray.append(medical66)
        dataArray.append(medical67)
        dataArray.append(medical68)
        dataArray.append(medical69)
        dataArray.append(medical70)
        dataArray.append(medical71)
        dataArray.append(medical72)
        
        
        //Setting properties of search controller
        resultSearchController = UISearchController(searchResultsController: nil)
        resultSearchController.searchResultsUpdater = self
        resultSearchController.hidesNavigationBarDuringPresentation = false
        resultSearchController.dimsBackgroundDuringPresentation = false
        resultSearchController.searchBar.sizeToFit()
        tableview.tableHeaderView = resultSearchController.searchBar
        tableview.reloadData()
    }

    
    
    
    
   
    //Function to add number of rows in tableview
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if resultSearchController.active
        {
            return filteredData.count
        }
        else
        {
            return dataArray.count
        }
    }
    
    
    
    
    
    
    //Function to add tableview row data
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //Variable to reuse cell identifier called MyCell
        let cell : UITableViewCell = tableView.dequeueReusableCellWithIdentifier("MyCell") as! UITableViewCell
        
        //If search controller is active
        if resultSearchController.active
        {
            //Setting search results
            let currentMedical : MedicalInfo = filteredData[indexPath.row]
            //Setting the text to the tableview results
            cell.textLabel!.text = currentMedical.name
        }
        else
        {
            let currentMedical : MedicalInfo = dataArray[indexPath.row]
            //Changing font and adding text to rows
            cell.textLabel!.font = UIFont(name: "Georgia", size: 13)
            cell.textLabel!.text = currentMedical.name
        }
        return cell
    }
    
    
    
    
    
    //Function to update the search results table view
    func updateSearchResultsForSearchController(searchController: UISearchController) {
        
        //Removing the data each time its searched
        filteredData.removeAll(keepCapacity: false)
        
        //Setting searchPredicate to check for name
        let searchPredicate = NSPredicate(format: "SELF.name CONTAINS[c] %@", searchController.searchBar.text)
        
        //Setting dataArray to NSArray
        var array = (dataArray as NSArray).filteredArrayUsingPredicate(searchPredicate)
        
        //Setting array to MedicalInfo Object
        filteredData = array as! [MedicalInfo]
        
        //Reloading the tableview
        tableview.reloadData()
        
    }
    
    
    
    
    
    
    //Function to call 911
    @IBAction func makeCall(sender: UIButton) {
        
        //Variable to set alertController and Properties
        let alertController = UIAlertController(title: "Emergency", message: "Make a call to 911?", preferredStyle: .Alert)
        
        //Var to set "Yes" button
        let defaultAction1 = UIAlertAction(title: "Yes", style: .Default) { (action) -> Void in
            //If pressed then the call will be made
            let numberUrl : NSURL = NSURL(string: "tel://911")!
            UIApplication.sharedApplication().openURL(numberUrl)
        }
        
        //Setting the "No" button
        let defaultAction2 = UIAlertAction(title: "No", style: .Default, handler: nil)
        
        //Adding the buttons to the alertController
        alertController.addAction(defaultAction1)
        alertController.addAction(defaultAction2)
        
        //Showing the alert view
        self.presentViewController(alertController, animated: true, completion: nil)
    }
    
    
    
    
    
    
    //Function to dismiss keyboard via touch on view
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        resultSearchController.view.endEditing(true)
    }
    
    
    
    
    
    
    //Function to send information from one view to another
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if resultSearchController.active {
            
            //Setting variable to DetailViewController as segue
            let detailController : DetailViewController = segue.destinationViewController as! DetailViewController
            
            let indexPath : NSIndexPath? = tableview.indexPathForSelectedRow
            
            let currentMedical : MedicalInfo = filteredData[indexPath!.row]
            
            //Changing text to display
            detailController.emergencyText = currentMedical.name
            detailController.symptomsText = currentMedical.symptoms
            detailController.stepsText = currentMedical.steps
            
            //Dismissing the search bar
            resultSearchController.dismissViewControllerAnimated(true, completion: nil)
        
        
        } else {
            
            //Setting variable to DetailViewController as segue
            let detailController : DetailViewController = segue.destinationViewController as! DetailViewController
            
            let indexPath : NSIndexPath? = tableview.indexPathForSelectedRow
            
            let currentMedical : MedicalInfo = dataArray[indexPath!.row]
            
            //Changing text to display
            detailController.emergencyText = currentMedical.name
            detailController.symptomsText = currentMedical.symptoms
            detailController.stepsText = currentMedical.steps
            
            //Dismissing the search bar
            resultSearchController.dismissViewControllerAnimated(true, completion: nil)
            
        }
    }
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}









