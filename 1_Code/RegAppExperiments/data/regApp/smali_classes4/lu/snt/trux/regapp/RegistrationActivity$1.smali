.class Llu/snt/trux/regapp/RegistrationActivity$1;
.super Ljava/lang/Object;
.source "RegistrationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llu/snt/trux/regapp/RegistrationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llu/snt/trux/regapp/RegistrationActivity;


# direct methods
.method constructor <init>(Llu/snt/trux/regapp/RegistrationActivity;)V
    .locals 0
    .param p1, "this$0"    # Llu/snt/trux/regapp/RegistrationActivity;

    .line 66
    iput-object p1, p0, Llu/snt/trux/regapp/RegistrationActivity$1;->this$0:Llu/snt/trux/regapp/RegistrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 24
    .param p1, "view"    # Landroid/view/View;

    .line 70
    move-object/from16 v9, p0

    iget-object v0, v9, Llu/snt/trux/regapp/RegistrationActivity$1;->this$0:Llu/snt/trux/regapp/RegistrationActivity;

    invoke-static {v0}, Llu/snt/trux/regapp/RegistrationActivity;->-$$Nest$fgetemailEditText(Llu/snt/trux/regapp/RegistrationActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 71
    .local v10, "email":Ljava/lang/String;
    iget-object v0, v9, Llu/snt/trux/regapp/RegistrationActivity$1;->this$0:Llu/snt/trux/regapp/RegistrationActivity;

    invoke-static {v0}, Llu/snt/trux/regapp/RegistrationActivity;->-$$Nest$fgetpasswordEditText(Llu/snt/trux/regapp/RegistrationActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 72
    .local v11, "password":Ljava/lang/String;
    iget-object v0, v9, Llu/snt/trux/regapp/RegistrationActivity$1;->this$0:Llu/snt/trux/regapp/RegistrationActivity;

    invoke-static {v0}, Llu/snt/trux/regapp/RegistrationActivity;->-$$Nest$fgetcheckPasswordEditText(Llu/snt/trux/regapp/RegistrationActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 73
    .local v12, "pswCheck":Ljava/lang/String;
    iget-object v0, v9, Llu/snt/trux/regapp/RegistrationActivity$1;->this$0:Llu/snt/trux/regapp/RegistrationActivity;

    invoke-static {v0}, Llu/snt/trux/regapp/RegistrationActivity;->-$$Nest$fgetnameEditText(Llu/snt/trux/regapp/RegistrationActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 74
    .local v13, "name":Ljava/lang/String;
    iget-object v0, v9, Llu/snt/trux/regapp/RegistrationActivity$1;->this$0:Llu/snt/trux/regapp/RegistrationActivity;

    invoke-static {v0}, Llu/snt/trux/regapp/RegistrationActivity;->-$$Nest$fgetsurnameEditText(Llu/snt/trux/regapp/RegistrationActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 75
    .local v14, "surname":Ljava/lang/String;
    iget-object v0, v9, Llu/snt/trux/regapp/RegistrationActivity$1;->this$0:Llu/snt/trux/regapp/RegistrationActivity;

    invoke-static {v0}, Llu/snt/trux/regapp/RegistrationActivity;->-$$Nest$fgetheightEditText(Llu/snt/trux/regapp/RegistrationActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 76
    .local v15, "heightStr":Ljava/lang/String;
    iget-object v0, v9, Llu/snt/trux/regapp/RegistrationActivity$1;->this$0:Llu/snt/trux/regapp/RegistrationActivity;

    invoke-static {v0}, Llu/snt/trux/regapp/RegistrationActivity;->-$$Nest$fgetweightEditText(Llu/snt/trux/regapp/RegistrationActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 77
    .local v16, "weightStr":Ljava/lang/String;
    iget-object v0, v9, Llu/snt/trux/regapp/RegistrationActivity$1;->this$0:Llu/snt/trux/regapp/RegistrationActivity;

    invoke-static {v0}, Llu/snt/trux/regapp/RegistrationActivity;->-$$Nest$fgetsexSpinner(Llu/snt/trux/regapp/RegistrationActivity;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 78
    .local v17, "sex":Ljava/lang/String;
    iget-object v0, v9, Llu/snt/trux/regapp/RegistrationActivity$1;->this$0:Llu/snt/trux/regapp/RegistrationActivity;

    invoke-static {v0}, Llu/snt/trux/regapp/RegistrationActivity;->-$$Nest$fgeteditTextBirthDate(Llu/snt/trux/regapp/RegistrationActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 80
    .local v18, "birthDate":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x1020002

    if-nez v0, :cond_2

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    iget-object v0, v9, Llu/snt/trux/regapp/RegistrationActivity$1;->this$0:Llu/snt/trux/regapp/RegistrationActivity;

    invoke-virtual {v0, v2}, Llu/snt/trux/regapp/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "\u274c Passwords do not match."

    invoke-static {v0, v2, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    goto :goto_1

    .line 86
    :cond_1
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 87
    .local v19, "height":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    .line 90
    .local v20, "weight":D
    iget-object v0, v9, Llu/snt/trux/regapp/RegistrationActivity$1;->this$0:Llu/snt/trux/regapp/RegistrationActivity;

    invoke-static {v0}, Llu/snt/trux/regapp/RegistrationActivity;->-$$Nest$fgetfirebaseAuth(Llu/snt/trux/regapp/RegistrationActivity;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Lcom/google/firebase/auth/FirebaseAuth;->createUserWithEmailAndPassword(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v8

    new-instance v6, Llu/snt/trux/regapp/RegistrationActivity$1$1;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v14

    move-object/from16 v4, v18

    move/from16 v5, v19

    move-object/from16 v22, v10

    move-object v10, v6

    .end local v10    # "email":Ljava/lang/String;
    .local v22, "email":Ljava/lang/String;
    move-wide/from16 v6, v20

    move-object/from16 v23, v11

    move-object v11, v8

    .end local v11    # "password":Ljava/lang/String;
    .local v23, "password":Ljava/lang/String;
    move-object/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Llu/snt/trux/regapp/RegistrationActivity$1$1;-><init>(Llu/snt/trux/regapp/RegistrationActivity$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDLjava/lang/String;)V

    .line 91
    invoke-virtual {v11, v10}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_1

    .line 80
    .end local v19    # "height":I
    .end local v20    # "weight":D
    .end local v22    # "email":Ljava/lang/String;
    .end local v23    # "password":Ljava/lang/String;
    .restart local v10    # "email":Ljava/lang/String;
    .restart local v11    # "password":Ljava/lang/String;
    :cond_2
    move-object/from16 v22, v10

    move-object/from16 v23, v11

    .line 81
    .end local v10    # "email":Ljava/lang/String;
    .end local v11    # "password":Ljava/lang/String;
    .restart local v22    # "email":Ljava/lang/String;
    .restart local v23    # "password":Ljava/lang/String;
    :goto_0
    iget-object v0, v9, Llu/snt/trux/regapp/RegistrationActivity$1;->this$0:Llu/snt/trux/regapp/RegistrationActivity;

    invoke-virtual {v0, v2}, Llu/snt/trux/regapp/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "\u274c Please fill in all fields."

    invoke-static {v0, v2, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 117
    :goto_1
    return-void
.end method
