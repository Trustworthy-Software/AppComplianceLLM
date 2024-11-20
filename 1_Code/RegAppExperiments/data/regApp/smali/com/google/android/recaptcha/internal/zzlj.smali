.class public final Lcom/google/android/recaptcha/internal/zzlj;
.super Lcom/google/android/recaptcha/internal/zzgo;
.source "com.google.android.recaptcha:recaptcha@@18.1.2"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzhz;


# static fields
.field private static final zzb:Lcom/google/android/recaptcha/internal/zzlj;


# instance fields
.field private zzd:Ljava/lang/String;

.field private zze:Lcom/google/android/recaptcha/internal/zzkp;

.field private zzf:Lcom/google/android/recaptcha/internal/zzkj;

.field private zzg:Lcom/google/android/recaptcha/internal/zzks;

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/recaptcha/internal/zzlj;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzlj;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzlj;->zzb:Lcom/google/android/recaptcha/internal/zzlj;

    const-class v1, Lcom/google/android/recaptcha/internal/zzlj;

    invoke-static {v1, v0}, Lcom/google/android/recaptcha/internal/zzgo;->zzC(Ljava/lang/Class;Lcom/google/android/recaptcha/internal/zzgo;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/recaptcha/internal/zzgo;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzlj;->zzd:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzlj;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzlj;->zzi:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzG(Lcom/google/android/recaptcha/internal/zzlj;Lcom/google/android/recaptcha/internal/zzkj;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzlj;->zzf:Lcom/google/android/recaptcha/internal/zzkj;

    return-void
.end method

.method public static zzf()Lcom/google/android/recaptcha/internal/zzli;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/recaptcha/internal/zzlj;->zzb:Lcom/google/android/recaptcha/internal/zzlj;

    invoke-virtual {v0}, Lcom/google/android/recaptcha/internal/zzgo;->zzp()Lcom/google/android/recaptcha/internal/zzgi;

    move-result-object v0

    check-cast v0, Lcom/google/android/recaptcha/internal/zzli;

    return-object v0
.end method

.method static synthetic zzg()Lcom/google/android/recaptcha/internal/zzlj;
    .locals 1

    sget-object v0, Lcom/google/android/recaptcha/internal/zzlj;->zzb:Lcom/google/android/recaptcha/internal/zzlj;

    return-object v0
.end method

.method static synthetic zzi(Lcom/google/android/recaptcha/internal/zzlj;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzlj;->zzd:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzj(Lcom/google/android/recaptcha/internal/zzlj;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzlj;->zzh:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzk(Lcom/google/android/recaptcha/internal/zzlj;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzlj;->zzi:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final zzh(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 2
    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-object p2

    .line 1
    :pswitch_1
    sget-object p1, Lcom/google/android/recaptcha/internal/zzlj;->zzb:Lcom/google/android/recaptcha/internal/zzlj;

    return-object p1

    :pswitch_2
    new-instance p1, Lcom/google/android/recaptcha/internal/zzli;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/recaptcha/internal/zzli;-><init>(Lcom/google/android/recaptcha/internal/zzlh;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/google/android/recaptcha/internal/zzlj;

    invoke-direct {p1}, Lcom/google/android/recaptcha/internal/zzlj;-><init>()V

    return-object p1

    .line 2
    :pswitch_4
    const-string v0, "zzd"

    const-string v1, "zze"

    const-string v2, "zzf"

    const-string v3, "zzg"

    const-string v4, "zzh"

    const-string v5, "zzi"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/recaptcha/internal/zzlj;->zzb:Lcom/google/android/recaptcha/internal/zzlj;

    const-string p3, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0208\u0002\t\u0003\t\u0004\t\u0005\u0208\u0006\u0208"

    invoke-static {p2, p3, p1}, Lcom/google/android/recaptcha/internal/zzlj;->zzz(Lcom/google/android/recaptcha/internal/zzhy;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
