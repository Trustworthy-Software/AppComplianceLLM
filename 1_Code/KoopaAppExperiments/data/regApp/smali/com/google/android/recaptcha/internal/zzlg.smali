.class public final Lcom/google/android/recaptcha/internal/zzlg;
.super Lcom/google/android/recaptcha/internal/zzgo;
.source "com.google.android.recaptcha:recaptcha@@18.1.2"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzhz;


# static fields
.field private static final zzb:Lcom/google/android/recaptcha/internal/zzlg;


# instance fields
.field private zzd:Lcom/google/android/recaptcha/internal/zzfw;

.field private zze:Lcom/google/android/recaptcha/internal/zzjd;

.field private zzf:Lcom/google/android/recaptcha/internal/zzfw;

.field private zzg:Lcom/google/android/recaptcha/internal/zzjd;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/recaptcha/internal/zzlg;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzlg;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzlg;->zzb:Lcom/google/android/recaptcha/internal/zzlg;

    const-class v1, Lcom/google/android/recaptcha/internal/zzlg;

    invoke-static {v1, v0}, Lcom/google/android/recaptcha/internal/zzgo;->zzC(Ljava/lang/Class;Lcom/google/android/recaptcha/internal/zzgo;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/recaptcha/internal/zzgo;-><init>()V

    return-void
.end method

.method static synthetic zzG(Lcom/google/android/recaptcha/internal/zzlg;Lcom/google/android/recaptcha/internal/zzfw;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzlg;->zzf:Lcom/google/android/recaptcha/internal/zzfw;

    return-void
.end method

.method public static zzf()Lcom/google/android/recaptcha/internal/zzlf;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/recaptcha/internal/zzlg;->zzb:Lcom/google/android/recaptcha/internal/zzlg;

    invoke-virtual {v0}, Lcom/google/android/recaptcha/internal/zzgo;->zzp()Lcom/google/android/recaptcha/internal/zzgi;

    move-result-object v0

    check-cast v0, Lcom/google/android/recaptcha/internal/zzlf;

    return-object v0
.end method

.method static synthetic zzg()Lcom/google/android/recaptcha/internal/zzlg;
    .locals 1

    sget-object v0, Lcom/google/android/recaptcha/internal/zzlg;->zzb:Lcom/google/android/recaptcha/internal/zzlg;

    return-object v0
.end method

.method static synthetic zzi(Lcom/google/android/recaptcha/internal/zzlg;Lcom/google/android/recaptcha/internal/zzfw;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzlg;->zzd:Lcom/google/android/recaptcha/internal/zzfw;

    return-void
.end method

.method static synthetic zzj(Lcom/google/android/recaptcha/internal/zzlg;Lcom/google/android/recaptcha/internal/zzjd;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzlg;->zzg:Lcom/google/android/recaptcha/internal/zzjd;

    return-void
.end method

.method static synthetic zzk(Lcom/google/android/recaptcha/internal/zzlg;Lcom/google/android/recaptcha/internal/zzjd;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzlg;->zze:Lcom/google/android/recaptcha/internal/zzjd;

    return-void
.end method


# virtual methods
.method protected final zzh(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2
    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-object p2

    .line 1
    :pswitch_1
    sget-object p1, Lcom/google/android/recaptcha/internal/zzlg;->zzb:Lcom/google/android/recaptcha/internal/zzlg;

    return-object p1

    :pswitch_2
    new-instance p1, Lcom/google/android/recaptcha/internal/zzlf;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/recaptcha/internal/zzlf;-><init>(Lcom/google/android/recaptcha/internal/zzle;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/google/android/recaptcha/internal/zzlg;

    invoke-direct {p1}, Lcom/google/android/recaptcha/internal/zzlg;-><init>()V

    return-object p1

    .line 2
    :pswitch_4
    const-string p1, "zzf"

    const-string p2, "zzg"

    const-string p3, "zzd"

    const-string v0, "zze"

    filled-new-array {p3, v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/recaptcha/internal/zzlg;->zzb:Lcom/google/android/recaptcha/internal/zzlg;

    const-string p3, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0002\t\u0003\t\u0004\t"

    invoke-static {p2, p3, p1}, Lcom/google/android/recaptcha/internal/zzlg;->zzz(Lcom/google/android/recaptcha/internal/zzhy;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :pswitch_5
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
