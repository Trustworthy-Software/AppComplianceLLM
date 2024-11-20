.class public final Lcom/google/android/recaptcha/internal/zzlm;
.super Lcom/google/android/recaptcha/internal/zzgo;
.source "com.google.android.recaptcha:recaptcha@@18.1.2"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzhz;


# static fields
.field private static final zzb:Lcom/google/android/recaptcha/internal/zzlm;


# instance fields
.field private zzd:I

.field private zze:Z

.field private zzf:Lcom/google/android/recaptcha/internal/zzfw;

.field private zzg:Lcom/google/android/recaptcha/internal/zzjd;

.field private zzh:I

.field private zzi:Lcom/google/android/recaptcha/internal/zzkm;

.field private zzj:Lcom/google/android/recaptcha/internal/zzgv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/recaptcha/internal/zzlm;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzlm;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzlm;->zzb:Lcom/google/android/recaptcha/internal/zzlm;

    .line 2
    const-class v1, Lcom/google/android/recaptcha/internal/zzlm;

    invoke-static {v1, v0}, Lcom/google/android/recaptcha/internal/zzgo;->zzC(Ljava/lang/Class;Lcom/google/android/recaptcha/internal/zzgo;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/recaptcha/internal/zzgo;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzlm;->zzw()Lcom/google/android/recaptcha/internal/zzgv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzlm;->zzj:Lcom/google/android/recaptcha/internal/zzgv;

    return-void
.end method

.method static synthetic zzf()Lcom/google/android/recaptcha/internal/zzlm;
    .locals 1

    sget-object v0, Lcom/google/android/recaptcha/internal/zzlm;->zzb:Lcom/google/android/recaptcha/internal/zzlm;

    return-object v0
.end method


# virtual methods
.method protected final zzh(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 2
    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-object p2

    .line 1
    :pswitch_1
    sget-object p1, Lcom/google/android/recaptcha/internal/zzlm;->zzb:Lcom/google/android/recaptcha/internal/zzlm;

    return-object p1

    :pswitch_2
    new-instance p1, Lcom/google/android/recaptcha/internal/zzll;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/recaptcha/internal/zzll;-><init>(Lcom/google/android/recaptcha/internal/zzlk;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/google/android/recaptcha/internal/zzlm;

    .line 4
    invoke-direct {p1}, Lcom/google/android/recaptcha/internal/zzlm;-><init>()V

    return-object p1

    .line 2
    :pswitch_4
    const-string v0, "zzd"

    const-string v1, "zze"

    const-string v2, "zzf"

    const-string v3, "zzg"

    const-string v4, "zzh"

    const-string v5, "zzi"

    const-string v6, "zzj"

    const-class v7, Lcom/google/android/recaptcha/internal/zzld;

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/recaptcha/internal/zzlm;->zzb:Lcom/google/android/recaptcha/internal/zzlm;

    const-string p3, "\u0000\u0007\u0000\u0000\u0001\u0007\u0007\u0000\u0001\u0000\u0001\u0004\u0002\u0007\u0003\t\u0004\t\u0005\u000c\u0006\t\u0007\u001b"

    invoke-static {p2, p3, p1}, Lcom/google/android/recaptcha/internal/zzlm;->zzz(Lcom/google/android/recaptcha/internal/zzhy;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
