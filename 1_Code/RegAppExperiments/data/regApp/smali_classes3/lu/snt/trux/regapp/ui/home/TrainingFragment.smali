.class public Llu/snt/trux/regapp/ui/home/TrainingFragment;
.super Landroidx/fragment/app/Fragment;
.source "TrainingFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llu/snt/trux/regapp/ui/home/TrainingFragment$SendDataToServerTask;
    }
.end annotation


# static fields
.field private static final DEFAULT_LATITUDE:D = 49.6116

.field private static final DEFAULT_LONGITUDE:D = 6.1319

.field private static final LOCATION_PERMISSION_REQUEST_CODE:I = 0x309


# instance fields
.field private addTrainingButton:Landroid/widget/Button;

.field private calendar:Ljava/util/Calendar;

.field private dateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private editTextDate:Landroid/widget/EditText;

.field private editTextDuration:Landroid/widget/EditText;

.field private firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

.field private firebaseAuthStateListener:Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;

.field private firebaseCurrentUser:Lcom/google/firebase/auth/FirebaseUser;

.field private firebaseDatabase:Lcom/google/firebase/database/FirebaseDatabase;

.field private fusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

.field private mContext:Landroid/content/Context;

.field private noGpsMessageTextView:Landroid/widget/TextView;

.field private osmMapView:Lorg/osmdroid/views/MapView;

.field private retrieveLocationButton:Landroid/widget/Button;

.field private spinnerIntensity:Landroid/widget/Spinner;

.field private userLatitude:D

.field private userLongitude:D


# direct methods
.method static bridge synthetic -$$Nest$fgetaddTrainingButton(Llu/snt/trux/regapp/ui/home/TrainingFragment;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->addTrainingButton:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcalendar(Llu/snt/trux/regapp/ui/home/TrainingFragment;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->calendar:Ljava/util/Calendar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeteditTextDate(Llu/snt/trux/regapp/ui/home/TrainingFragment;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->editTextDate:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeteditTextDuration(Llu/snt/trux/regapp/ui/home/TrainingFragment;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->editTextDuration:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfirebaseCurrentUser(Llu/snt/trux/regapp/ui/home/TrainingFragment;)Lcom/google/firebase/auth/FirebaseUser;
    .locals 0

    iget-object p0, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->firebaseCurrentUser:Lcom/google/firebase/auth/FirebaseUser;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfirebaseDatabase(Llu/snt/trux/regapp/ui/home/TrainingFragment;)Lcom/google/firebase/database/FirebaseDatabase;
    .locals 0

    iget-object p0, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->firebaseDatabase:Lcom/google/firebase/database/FirebaseDatabase;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Llu/snt/trux/regapp/ui/home/TrainingFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnoGpsMessageTextView(Llu/snt/trux/regapp/ui/home/TrainingFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->noGpsMessageTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetspinnerIntensity(Llu/snt/trux/regapp/ui/home/TrainingFragment;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->spinnerIntensity:Landroid/widget/Spinner;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuserLatitude(Llu/snt/trux/regapp/ui/home/TrainingFragment;)D
    .locals 2

    iget-wide v0, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->userLatitude:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetuserLongitude(Llu/snt/trux/regapp/ui/home/TrainingFragment;)D
    .locals 2

    iget-wide v0, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->userLongitude:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$mupdateDateInView(Llu/snt/trux/regapp/ui/home/TrainingFragment;)V
    .locals 0

    invoke-direct {p0}, Llu/snt/trux/regapp/ui/home/TrainingFragment;->updateDateInView()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 287
    new-instance v0, Llu/snt/trux/regapp/ui/home/TrainingFragment$3;

    invoke-direct {v0, p0}, Llu/snt/trux/regapp/ui/home/TrainingFragment$3;-><init>(Llu/snt/trux/regapp/ui/home/TrainingFragment;)V

    iput-object v0, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->dateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method private retrieveLocation()V
    .locals 3

    .line 235
    invoke-virtual {p0}, Llu/snt/trux/regapp/ui/home/TrainingFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->fusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    invoke-virtual {v0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->getLastLocation()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-virtual {p0}, Llu/snt/trux/regapp/ui/home/TrainingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Llu/snt/trux/regapp/ui/home/TrainingFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Llu/snt/trux/regapp/ui/home/TrainingFragment$$ExternalSyntheticLambda1;-><init>(Llu/snt/trux/regapp/ui/home/TrainingFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    .line 255
    :cond_0
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x309

    invoke-virtual {p0, v0, v1}, Llu/snt/trux/regapp/ui/home/TrainingFragment;->requestPermissions([Ljava/lang/String;I)V

    .line 257
    :goto_0
    return-void
.end method

.method private showDatePicker()V
    .locals 10

    .line 278
    iget-object v0, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 279
    .local v0, "year":I
    iget-object v1, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->calendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 280
    .local v1, "month":I
    iget-object v2, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 282
    .local v8, "day":I
    new-instance v9, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Llu/snt/trux/regapp/ui/home/TrainingFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->dateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    move-object v2, v9

    move v5, v0

    move v6, v1

    move v7, v8

    invoke-direct/range {v2 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 283
    .local v2, "datePickerDialog":Landroid/app/DatePickerDialog;
    invoke-virtual {v2}, Landroid/app/DatePickerDialog;->show()V

    .line 284
    return-void
.end method

.method private updateDateInView()V
    .locals 4

    .line 302
    const-string v0, "dd/MM/yyyy"

    .line 303
    .local v0, "myFormat":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 304
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    iget-object v2, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->editTextDate:Landroid/widget/EditText;

    iget-object v3, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 305
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateView$0$lu-snt-trux-regapp-ui-home-TrainingFragment(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 99
    invoke-direct {p0}, Llu/snt/trux/regapp/ui/home/TrainingFragment;->showDatePicker()V

    return-void
.end method

.method synthetic lambda$retrieveLocation$1$lu-snt-trux-regapp-ui-home-TrainingFragment(Landroid/location/Location;)V
    .locals 6
    .param p1, "location"    # Landroid/location/Location;

    .line 237
    if-eqz p1, :cond_0

    .line 238
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->userLatitude:D

    .line 239
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->userLongitude:D

    .line 242
    iget-object v0, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->osmMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    iget-wide v2, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->userLatitude:D

    iget-wide v4, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->userLongitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->setCenter(Lorg/osmdroid/api/IGeoPoint;)V

    .line 245
    new-instance v0, Lorg/osmdroid/views/overlay/Marker;

    iget-object v1, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->osmMapView:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v1}, Lorg/osmdroid/views/overlay/Marker;-><init>(Lorg/osmdroid/views/MapView;)V

    .line 246
    .local v0, "locationMarker":Lorg/osmdroid/views/overlay/Marker;
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    iget-wide v2, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->userLatitude:D

    iget-wide v4, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->userLongitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    .line 247
    iget-object v1, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->osmMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v1, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->osmMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 252
    .end local v0    # "locationMarker":Lorg/osmdroid/views/overlay/Marker;
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 331
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 332
    iput-object p1, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->mContext:Landroid/content/Context;

    .line 333
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 89
    sget v0, Llu/snt/trux/regapp/R$layout;->fragment_training:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 92
    .local v0, "view":Landroid/view/View;
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v1

    iput-object v1, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    .line 93
    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v1

    iput-object v1, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->firebaseCurrentUser:Lcom/google/firebase/auth/FirebaseUser;

    .line 94
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v1

    iput-object v1, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->firebaseDatabase:Lcom/google/firebase/database/FirebaseDatabase;

    .line 97
    sget v1, Llu/snt/trux/regapp/R$id;->editTextDate:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->editTextDate:Landroid/widget/EditText;

    .line 98
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->calendar:Ljava/util/Calendar;

    .line 99
    iget-object v1, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->editTextDate:Landroid/widget/EditText;

    new-instance v2, Llu/snt/trux/regapp/ui/home/TrainingFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Llu/snt/trux/regapp/ui/home/TrainingFragment$$ExternalSyntheticLambda0;-><init>(Llu/snt/trux/regapp/ui/home/TrainingFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    sget v1, Llu/snt/trux/regapp/R$id;->osmMapView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/MapView;

    iput-object v1, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->osmMapView:Lorg/osmdroid/views/MapView;

    .line 104
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    const-string v2, "com.caverock.androidsvg"

    invoke-interface {v1, v2}, Lorg/osmdroid/config/IConfigurationProvider;->setUserAgentValue(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->osmMapView:Lorg/osmdroid/views/MapView;

    sget-object v2, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->MAPNIK:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-virtual {v1, v2}, Lorg/osmdroid/views/MapView;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 107
    iget-object v1, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->osmMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v1

    .line 108
    .local v1, "mapController":Lorg/osmdroid/api/IMapController;
    new-instance v2, Lorg/osmdroid/util/GeoPoint;

    const-wide v3, 0x4048ce48e8a71de7L    # 49.6116

    const-wide v5, 0x40188710cb295e9eL    # 6.1319

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 109
    .local v2, "startPoint":Lorg/osmdroid/util/GeoPoint;
    invoke-interface {v1, v2}, Lorg/osmdroid/api/IMapController;->setCenter(Lorg/osmdroid/api/IGeoPoint;)V

    .line 110
    const-wide/high16 v3, 0x402e000000000000L    # 15.0

    invoke-interface {v1, v3, v4}, Lorg/osmdroid/api/IMapController;->setZoom(D)D

    .line 113
    invoke-virtual {p0}, Llu/snt/trux/regapp/ui/home/TrainingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/app/Activity;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v3

    iput-object v3, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->fusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 114
    invoke-direct {p0}, Llu/snt/trux/regapp/ui/home/TrainingFragment;->retrieveLocation()V

    .line 118
    sget v3, Llu/snt/trux/regapp/R$id;->editTextDate:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->editTextDate:Landroid/widget/EditText;

    .line 119
    sget v3, Llu/snt/trux/regapp/R$id;->editTextDuration:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->editTextDuration:Landroid/widget/EditText;

    .line 120
    sget v3, Llu/snt/trux/regapp/R$id;->spinnerIntensity:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->spinnerIntensity:Landroid/widget/Spinner;

    .line 121
    sget v3, Llu/snt/trux/regapp/R$id;->noGpsMessageTextView:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->noGpsMessageTextView:Landroid/widget/TextView;

    .line 124
    sget v3, Llu/snt/trux/regapp/R$id;->buttonAddTraining:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->addTrainingButton:Landroid/widget/Button;

    .line 125
    new-instance v4, Llu/snt/trux/regapp/ui/home/TrainingFragment$1;

    invoke-direct {v4, p0}, Llu/snt/trux/regapp/ui/home/TrainingFragment$1;-><init>(Llu/snt/trux/regapp/ui/home/TrainingFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    invoke-virtual {p0}, Llu/snt/trux/regapp/ui/home/TrainingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-string v4, "location"

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    .line 176
    .local v3, "locationManager":Landroid/location/LocationManager;
    new-instance v9, Llu/snt/trux/regapp/ui/home/TrainingFragment$2;

    invoke-direct {v9, p0}, Llu/snt/trux/regapp/ui/home/TrainingFragment$2;-><init>(Llu/snt/trux/regapp/ui/home/TrainingFragment;)V

    .line 221
    .local v9, "locationListener":Landroid/location/LocationListener;
    invoke-virtual {p0}, Llu/snt/trux/regapp/ui/home/TrainingFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v4, v5}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 222
    invoke-virtual {p0}, Llu/snt/trux/regapp/ui/home/TrainingFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v4, v5}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 223
    const-string v5, "gps"

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 228
    :cond_0
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 324
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 325
    iget-object v0, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->osmMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->onDetach()V

    .line 326
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 338
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->mContext:Landroid/content/Context;

    .line 340
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 318
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 319
    iget-object v0, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->osmMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->onPause()V

    .line 320
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 262
    const/16 v0, 0x309

    if-ne p1, v0, :cond_1

    .line 263
    array-length v0, p3

    const/4 v1, 0x0

    if-lez v0, :cond_0

    aget v0, p3, v1

    if-nez v0, :cond_0

    .line 265
    const-string v0, "RegApp"

    const-string v1, "\u2705 Permission Granted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-direct {p0}, Llu/snt/trux/regapp/ui/home/TrainingFragment;->retrieveLocation()V

    goto :goto_0

    .line 269
    :cond_0
    invoke-virtual {p0}, Llu/snt/trux/regapp/ui/home/TrainingFragment;->getView()Landroid/view/View;

    move-result-object v0

    const-string v2, "\u274c Permission Denied "

    invoke-static {v0, v2, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 272
    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 312
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 313
    iget-object v0, p0, Llu/snt/trux/regapp/ui/home/TrainingFragment;->osmMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->onResume()V

    .line 314
    return-void
.end method
