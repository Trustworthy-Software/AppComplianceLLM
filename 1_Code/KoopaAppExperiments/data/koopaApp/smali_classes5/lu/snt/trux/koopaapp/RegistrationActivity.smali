.class public Llu/snt/trux/koopaapp/RegistrationActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "RegistrationActivity.java"


# instance fields
.field private calendar:Ljava/util/Calendar;

.field private checkPasswordEditText:Landroid/widget/EditText;

.field private editTextBirthDate:Landroid/widget/EditText;

.field private emailEditText:Landroid/widget/EditText;

.field private firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

.field private firebaseDatabase:Lcom/google/firebase/database/FirebaseDatabase;

.field private heightEditText:Landroid/widget/EditText;

.field private nameEditText:Landroid/widget/EditText;

.field private passwordEditText:Landroid/widget/EditText;

.field private sexSpinner:Landroid/widget/Spinner;

.field private submitButton:Landroid/widget/Button;

.field private surnameEditText:Landroid/widget/EditText;

.field private weightEditText:Landroid/widget/EditText;


# direct methods
.method static bridge synthetic -$$Nest$fgetcheckPasswordEditText(Llu/snt/trux/koopaapp/RegistrationActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Llu/snt/trux/koopaapp/RegistrationActivity;->checkPasswordEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeteditTextBirthDate(Llu/snt/trux/koopaapp/RegistrationActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Llu/snt/trux/koopaapp/RegistrationActivity;->editTextBirthDate:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetemailEditText(Llu/snt/trux/koopaapp/RegistrationActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Llu/snt/trux/koopaapp/RegistrationActivity;->emailEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfirebaseAuth(Llu/snt/trux/koopaapp/RegistrationActivity;)Lcom/google/firebase/auth/FirebaseAuth;
    .locals 0

    iget-object p0, p0, Llu/snt/trux/koopaapp/RegistrationActivity;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfirebaseDatabase(Llu/snt/trux/koopaapp/RegistrationActivity;)Lcom/google/firebase/database/FirebaseDatabase;
    .locals 0

    iget-object p0, p0, Llu/snt/trux/koopaapp/RegistrationActivity;->firebaseDatabase:Lcom/google/firebase/database/FirebaseDatabase;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetheightEditText(Llu/snt/trux/koopaapp/RegistrationActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Llu/snt/trux/koopaapp/RegistrationActivity;->heightEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnameEditText(Llu/snt/trux/koopaapp/RegistrationActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Llu/snt/trux/koopaapp/RegistrationActivity;->nameEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpasswordEditText(Llu/snt/trux/koopaapp/RegistrationActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Llu/snt/trux/koopaapp/RegistrationActivity;->passwordEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsexSpinner(Llu/snt/trux/koopaapp/RegistrationActivity;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Llu/snt/trux/koopaapp/RegistrationActivity;->sexSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsurnameEditText(Llu/snt/trux/koopaapp/RegistrationActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Llu/snt/trux/koopaapp/RegistrationActivity;->surnameEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetweightEditText(Llu/snt/trux/koopaapp/RegistrationActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Llu/snt/trux/koopaapp/RegistrationActivity;->weightEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$showDatePicker$0$lu-snt-trux-koopaapp-RegistrationActivity(Landroid/widget/DatePicker;III)V
    .locals 3
    .param p1, "datePicker"    # Landroid/widget/DatePicker;
    .param p2, "year1"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .line 131
    iget-object v0, p0, Llu/snt/trux/koopaapp/RegistrationActivity;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 132
    iget-object v0, p0, Llu/snt/trux/koopaapp/RegistrationActivity;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 133
    iget-object v0, p0, Llu/snt/trux/koopaapp/RegistrationActivity;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 135
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 136
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Llu/snt/trux/koopaapp/RegistrationActivity;->editTextBirthDate:Landroid/widget/EditText;

    iget-object v2, p0, Llu/snt/trux/koopaapp/RegistrationActivity;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 137
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 42
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget v0, Llu/snt/trux/koopaapp/R$layout;->activity_registration:I

    invoke-virtual {p0, v0}, Llu/snt/trux/koopaapp/RegistrationActivity;->setContentView(I)V

    .line 47
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    iput-object v0, p0, Llu/snt/trux/koopaapp/RegistrationActivity;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    .line 48
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v0

    iput-object v0, p0, Llu/snt/trux/koopaapp/RegistrationActivity;->firebaseDatabase:Lcom/google/firebase/database/FirebaseDatabase;

    .line 51
    sget v0, Llu/snt/trux/koopaapp/R$id;->editTextEmail:I

    invoke-virtual {p0, v0}, Llu/snt/trux/koopaapp/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Llu/snt/trux/koopaapp/RegistrationActivity;->emailEditText:Landroid/widget/EditText;

    .line 52
    sget v0, Llu/snt/trux/koopaapp/R$id;->editTextPassword:I

    invoke-virtual {p0, v0}, Llu/snt/trux/koopaapp/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Llu/snt/trux/koopaapp/RegistrationActivity;->passwordEditText:Landroid/widget/EditText;

    .line 53
    sget v0, Llu/snt/trux/koopaapp/R$id;->editTextCheckPassword:I

    invoke-virtual {p0, v0}, Llu/snt/trux/koopaapp/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Llu/snt/trux/koopaapp/RegistrationActivity;->checkPasswordEditText:Landroid/widget/EditText;

    .line 55
    sget v0, Llu/snt/trux/koopaapp/R$id;->editTextName:I

    invoke-virtual {p0, v0}, Llu/snt/trux/koopaapp/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Llu/snt/trux/koopaapp/RegistrationActivity;->nameEditText:Landroid/widget/EditText;

    .line 56
    sget v0, Llu/snt/trux/koopaapp/R$id;->editTextSurname:I

    invoke-virtual {p0, v0}, Llu/snt/trux/koopaapp/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Llu/snt/trux/koopaapp/RegistrationActivity;->surnameEditText:Landroid/widget/EditText;

    .line 57
    sget v0, Llu/snt/trux/koopaapp/R$id;->editTextBirthDate:I

    invoke-virtual {p0, v0}, Llu/snt/trux/koopaapp/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Llu/snt/trux/koopaapp/RegistrationActivity;->editTextBirthDate:Landroid/widget/EditText;

    .line 58
    sget v0, Llu/snt/trux/koopaapp/R$id;->editTextHeight:I

    invoke-virtual {p0, v0}, Llu/snt/trux/koopaapp/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Llu/snt/trux/koopaapp/RegistrationActivity;->heightEditText:Landroid/widget/EditText;

    .line 59
    sget v0, Llu/snt/trux/koopaapp/R$id;->editTextWeight:I

    invoke-virtual {p0, v0}, Llu/snt/trux/koopaapp/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Llu/snt/trux/koopaapp/RegistrationActivity;->weightEditText:Landroid/widget/EditText;

    .line 60
    sget v0, Llu/snt/trux/koopaapp/R$id;->spinnerSex:I

    invoke-virtual {p0, v0}, Llu/snt/trux/koopaapp/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Llu/snt/trux/koopaapp/RegistrationActivity;->sexSpinner:Landroid/widget/Spinner;

    .line 62
    sget v0, Llu/snt/trux/koopaapp/R$id;->buttonSubmit:I

    invoke-virtual {p0, v0}, Llu/snt/trux/koopaapp/RegistrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llu/snt/trux/koopaapp/RegistrationActivity;->submitButton:Landroid/widget/Button;

    .line 63
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Llu/snt/trux/koopaapp/RegistrationActivity;->calendar:Ljava/util/Calendar;

    .line 66
    iget-object v0, p0, Llu/snt/trux/koopaapp/RegistrationActivity;->submitButton:Landroid/widget/Button;

    new-instance v1, Llu/snt/trux/koopaapp/RegistrationActivity$1;

    invoke-direct {v1, p0}, Llu/snt/trux/koopaapp/RegistrationActivity$1;-><init>(Llu/snt/trux/koopaapp/RegistrationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    return-void
.end method

.method public showDatePicker(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .line 125
    iget-object v0, p0, Llu/snt/trux/koopaapp/RegistrationActivity;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 126
    .local v0, "year":I
    iget-object v1, p0, Llu/snt/trux/koopaapp/RegistrationActivity;->calendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 127
    .local v1, "month":I
    iget-object v2, p0, Llu/snt/trux/koopaapp/RegistrationActivity;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 129
    .local v8, "day":I
    new-instance v9, Landroid/app/DatePickerDialog;

    new-instance v4, Llu/snt/trux/koopaapp/RegistrationActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Llu/snt/trux/koopaapp/RegistrationActivity$$ExternalSyntheticLambda0;-><init>(Llu/snt/trux/koopaapp/RegistrationActivity;)V

    move-object v2, v9

    move-object v3, p0

    move v5, v0

    move v6, v1

    move v7, v8

    invoke-direct/range {v2 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 139
    .local v2, "datePickerDialog":Landroid/app/DatePickerDialog;
    invoke-virtual {v2}, Landroid/app/DatePickerDialog;->show()V

    .line 140
    return-void
.end method
