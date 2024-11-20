.class Llu/snt/trux/regapp/ui/home/TrainingFragment$1;
.super Ljava/lang/Object;
.source "TrainingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llu/snt/trux/regapp/ui/home/TrainingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llu/snt/trux/regapp/ui/home/TrainingFragment;


# direct methods
.method constructor <init>(Llu/snt/trux/regapp/ui/home/TrainingFragment;)V
    .locals 0
    .param p1, "this$0"    # Llu/snt/trux/regapp/ui/home/TrainingFragment;

    .line 125
    iput-object p1, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment$1;->this$0:Llu/snt/trux/regapp/ui/home/TrainingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onClick$0$lu-snt-trux-regapp-ui-home-TrainingFragment$1(Landroid/view/View;Ljava/lang/Void;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 160
    iget-object v0, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment$1;->this$0:Llu/snt/trux/regapp/ui/home/TrainingFragment;

    invoke-virtual {v0}, Llu/snt/trux/regapp/ui/home/TrainingFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u2705 Update successful."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 162
    invoke-static {p1}, Landroidx/navigation/Navigation;->findNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object v0

    sget v1, Llu/snt/trux/regapp/R$id;->nav_home:I

    invoke-virtual {v0, v1}, Landroidx/navigation/NavController;->navigate(I)V

    .line 163
    return-void
.end method

.method synthetic lambda$onClick$1$lu-snt-trux-regapp-ui-home-TrainingFragment$1(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .line 164
    iget-object v0, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment$1;->this$0:Llu/snt/trux/regapp/ui/home/TrainingFragment;

    invoke-virtual {v0}, Llu/snt/trux/regapp/ui/home/TrainingFragment;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u274c Failed to upload data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 165
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;

    .line 129
    move-object/from16 v1, p0

    iget-object v0, v1, Llu/snt/trux/regapp/ui/home/TrainingFragment$1;->this$0:Llu/snt/trux/regapp/ui/home/TrainingFragment;

    invoke-static {v0}, Llu/snt/trux/regapp/ui/home/TrainingFragment;->-$$Nest$fgeteditTextDate(Llu/snt/trux/regapp/ui/home/TrainingFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 130
    .local v10, "date":Ljava/lang/String;
    iget-object v0, v1, Llu/snt/trux/regapp/ui/home/TrainingFragment$1;->this$0:Llu/snt/trux/regapp/ui/home/TrainingFragment;

    invoke-static {v0}, Llu/snt/trux/regapp/ui/home/TrainingFragment;->-$$Nest$fgeteditTextDuration(Llu/snt/trux/regapp/ui/home/TrainingFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 131
    .local v11, "durationString":Ljava/lang/String;
    iget-object v0, v1, Llu/snt/trux/regapp/ui/home/TrainingFragment$1;->this$0:Llu/snt/trux/regapp/ui/home/TrainingFragment;

    invoke-static {v0}, Llu/snt/trux/regapp/ui/home/TrainingFragment;->-$$Nest$fgetspinnerIntensity(Llu/snt/trux/regapp/ui/home/TrainingFragment;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 134
    .local v12, "intensity":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v6, p1

    goto/16 :goto_1

    .line 140
    :cond_0
    const/4 v2, 0x0

    .line 141
    .local v2, "duration":I
    :try_start_0
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 143
    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 142
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " \u274c Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RegApp"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 147
    .end local v2    # "duration":I
    .local v0, "duration":I
    :goto_0
    iget-object v2, v1, Llu/snt/trux/regapp/ui/home/TrainingFragment$1;->this$0:Llu/snt/trux/regapp/ui/home/TrainingFragment;

    invoke-static {v2}, Llu/snt/trux/regapp/ui/home/TrainingFragment;->-$$Nest$fgetfirebaseDatabase(Llu/snt/trux/regapp/ui/home/TrainingFragment;)Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v2

    const-string v3, "usersDB"

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/FirebaseDatabase;->getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v13

    .line 148
    .local v13, "usersRef":Lcom/google/firebase/database/DatabaseReference;
    iget-object v2, v1, Llu/snt/trux/regapp/ui/home/TrainingFragment$1;->this$0:Llu/snt/trux/regapp/ui/home/TrainingFragment;

    invoke-static {v2}, Llu/snt/trux/regapp/ui/home/TrainingFragment;->-$$Nest$fgetfirebaseCurrentUser(Llu/snt/trux/regapp/ui/home/TrainingFragment;)Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    const-string v3, "trainings"

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/DatabaseReference;->push()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v14

    .line 151
    .local v14, "userTrainingRef":Lcom/google/firebase/database/DatabaseReference;
    new-instance v15, Llu/snt/trux/regapp/Utils/Training;

    iget-object v2, v1, Llu/snt/trux/regapp/ui/home/TrainingFragment$1;->this$0:Llu/snt/trux/regapp/ui/home/TrainingFragment;

    invoke-static {v2}, Llu/snt/trux/regapp/ui/home/TrainingFragment;->-$$Nest$fgetuserLatitude(Llu/snt/trux/regapp/ui/home/TrainingFragment;)D

    move-result-wide v6

    iget-object v2, v1, Llu/snt/trux/regapp/ui/home/TrainingFragment$1;->this$0:Llu/snt/trux/regapp/ui/home/TrainingFragment;

    invoke-static {v2}, Llu/snt/trux/regapp/ui/home/TrainingFragment;->-$$Nest$fgetuserLongitude(Llu/snt/trux/regapp/ui/home/TrainingFragment;)D

    move-result-wide v8

    move-object v2, v15

    move-object v3, v10

    move v4, v0

    move-object v5, v12

    invoke-direct/range {v2 .. v9}, Llu/snt/trux/regapp/Utils/Training;-><init>(Ljava/lang/String;ILjava/lang/String;DD)V

    .line 154
    .local v2, "newTraining":Llu/snt/trux/regapp/Utils/Training;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LAT:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Llu/snt/trux/regapp/Utils/Training;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - LNG: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Llu/snt/trux/regapp/Utils/Training;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "message":Ljava/lang/String;
    new-instance v4, Llu/snt/trux/regapp/ui/home/TrainingFragment$SendDataToServerTask;

    iget-object v5, v1, Llu/snt/trux/regapp/ui/home/TrainingFragment$1;->this$0:Llu/snt/trux/regapp/ui/home/TrainingFragment;

    invoke-direct {v4, v5}, Llu/snt/trux/regapp/ui/home/TrainingFragment$SendDataToServerTask;-><init>(Llu/snt/trux/regapp/ui/home/TrainingFragment;)V

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Llu/snt/trux/regapp/ui/home/TrainingFragment$SendDataToServerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 158
    invoke-virtual {v14, v2}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v4

    new-instance v5, Llu/snt/trux/regapp/ui/home/TrainingFragment$1$$ExternalSyntheticLambda0;

    move-object/from16 v6, p1

    invoke-direct {v5, v1, v6}, Llu/snt/trux/regapp/ui/home/TrainingFragment$1$$ExternalSyntheticLambda0;-><init>(Llu/snt/trux/regapp/ui/home/TrainingFragment$1;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v4

    new-instance v5, Llu/snt/trux/regapp/ui/home/TrainingFragment$1$$ExternalSyntheticLambda1;

    invoke-direct {v5, v1}, Llu/snt/trux/regapp/ui/home/TrainingFragment$1$$ExternalSyntheticLambda1;-><init>(Llu/snt/trux/regapp/ui/home/TrainingFragment$1;)V

    .line 163
    invoke-virtual {v4, v5}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_2

    .line 134
    .end local v0    # "duration":I
    .end local v2    # "newTraining":Llu/snt/trux/regapp/Utils/Training;
    .end local v3    # "message":Ljava/lang/String;
    .end local v13    # "usersRef":Lcom/google/firebase/database/DatabaseReference;
    .end local v14    # "userTrainingRef":Lcom/google/firebase/database/DatabaseReference;
    :cond_1
    move-object/from16 v6, p1

    .line 136
    :goto_1
    iget-object v0, v1, Llu/snt/trux/regapp/ui/home/TrainingFragment$1;->this$0:Llu/snt/trux/regapp/ui/home/TrainingFragment;

    invoke-virtual {v0}, Llu/snt/trux/regapp/ui/home/TrainingFragment;->getView()Landroid/view/View;

    move-result-object v0

    const-string v2, "\u274c Please fill in all fields."

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 170
    :goto_2
    return-void
.end method
