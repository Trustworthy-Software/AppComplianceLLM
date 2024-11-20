.class public final Lcom/google/android/recaptcha/internal/zzld;
.super Lcom/google/android/recaptcha/internal/zzgo;
.source "com.google.android.recaptcha:recaptcha@@18.1.2"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzhz;


# static fields
.field private static final zzb:Lcom/google/android/recaptcha/internal/zzld;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/Object;

.field private zzf:Lcom/google/android/recaptcha/internal/zzlg;

.field private zzg:I

.field private zzh:Lcom/google/android/recaptcha/internal/zzkm;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/recaptcha/internal/zzld;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzld;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzld;->zzb:Lcom/google/android/recaptcha/internal/zzld;

    const-class v1, Lcom/google/android/recaptcha/internal/zzld;

    invoke-static {v1, v0}, Lcom/google/android/recaptcha/internal/zzgo;->zzC(Ljava/lang/Class;Lcom/google/android/recaptcha/internal/zzgo;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/recaptcha/internal/zzgo;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/recaptcha/internal/zzld;->zzd:I

    return-void
.end method

.method static synthetic zzf()Lcom/google/android/recaptcha/internal/zzld;
    .locals 1

    sget-object v0, Lcom/google/android/recaptcha/internal/zzld;->zzb:Lcom/google/android/recaptcha/internal/zzld;

    return-object v0
.end method


# virtual methods
.method protected final zzh(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 2
    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-object p2

    .line 1
    :pswitch_1
    sget-object p1, Lcom/google/android/recaptcha/internal/zzld;->zzb:Lcom/google/android/recaptcha/internal/zzld;

    return-object p1

    :pswitch_2
    new-instance p1, Lcom/google/android/recaptcha/internal/zzlc;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/recaptcha/internal/zzlc;-><init>(Lcom/google/android/recaptcha/internal/zzlb;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/google/android/recaptcha/internal/zzld;

    invoke-direct {p1}, Lcom/google/android/recaptcha/internal/zzld;-><init>()V

    return-object p1

    .line 2
    :pswitch_4
    const-string p1, "zzg"

    const-string p2, "zzh"

    const-string p3, "zze"

    const-string v0, "zzd"

    const-string v1, "zzf"

    filled-new-array {p3, v0, v1, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/recaptcha/internal/zzld;->zzb:Lcom/google/android/recaptcha/internal/zzld;

    const-string p3, "\u0000\u0017\u0001\u0000\u0001\u0017\u0017\u0000\u0000\u0000\u0001\t\u0002\u000c\u0003\t\u0004?\u0000\u0005?\u0000\u0006?\u0000\u0007?\u0000\u0008?\u0000\t?\u0000\n?\u0000\u000b?\u0000\u000c?\u0000\r?\u0000\u000e?\u0000\u000f?\u0000\u0010?\u0000\u0011?\u0000\u0012?\u0000\u0013?\u0000\u0014?\u0000\u0015?\u0000\u0016?\u0000\u0017?\u0000"

    invoke-static {p2, p3, p1}, Lcom/google/android/recaptcha/internal/zzld;->zzz(Lcom/google/android/recaptcha/internal/zzhy;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
