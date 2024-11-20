.class public final Lcom/google/android/recaptcha/internal/zzfs;
.super Lcom/google/android/recaptcha/internal/zzgo;
.source "com.google.android.recaptcha:recaptcha@@18.1.2"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzhz;


# static fields
.field private static final zzb:Lcom/google/android/recaptcha/internal/zzfs;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/recaptcha/internal/zzgv;

.field private zzf:Ljava/lang/String;

.field private zzg:J

.field private zzh:J

.field private zzi:D

.field private zzj:Lcom/google/android/recaptcha/internal/zzez;

.field private zzk:Ljava/lang/String;

.field private zzl:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/recaptcha/internal/zzfs;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzfs;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzfs;->zzb:Lcom/google/android/recaptcha/internal/zzfs;

    .line 2
    const-class v1, Lcom/google/android/recaptcha/internal/zzfs;

    invoke-static {v1, v0}, Lcom/google/android/recaptcha/internal/zzgo;->zzC(Ljava/lang/Class;Lcom/google/android/recaptcha/internal/zzgo;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/recaptcha/internal/zzgo;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/recaptcha/internal/zzfs;->zzl:B

    .line 2
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzii;->zze()Lcom/google/android/recaptcha/internal/zzii;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzfs;->zze:Lcom/google/android/recaptcha/internal/zzgv;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzfs;->zzf:Ljava/lang/String;

    .line 3
    sget-object v1, Lcom/google/android/recaptcha/internal/zzez;->zzb:Lcom/google/android/recaptcha/internal/zzez;

    iput-object v1, p0, Lcom/google/android/recaptcha/internal/zzfs;->zzj:Lcom/google/android/recaptcha/internal/zzez;

    iput-object v0, p0, Lcom/google/android/recaptcha/internal/zzfs;->zzk:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzf()Lcom/google/android/recaptcha/internal/zzfs;
    .locals 1

    sget-object v0, Lcom/google/android/recaptcha/internal/zzfs;->zzb:Lcom/google/android/recaptcha/internal/zzfs;

    return-object v0
.end method


# virtual methods
.method protected final zzh(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 2
    add-int/lit8 p1, p1, -0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :pswitch_1
    sget-object p1, Lcom/google/android/recaptcha/internal/zzfs;->zzb:Lcom/google/android/recaptcha/internal/zzfs;

    return-object p1

    :pswitch_2
    new-instance p1, Lcom/google/android/recaptcha/internal/zzfp;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/recaptcha/internal/zzfp;-><init>(Lcom/google/android/recaptcha/internal/zzfm;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/google/android/recaptcha/internal/zzfs;

    .line 4
    invoke-direct {p1}, Lcom/google/android/recaptcha/internal/zzfs;-><init>()V

    return-object p1

    .line 2
    :pswitch_4
    const-string v0, "zzd"

    const-string v1, "zze"

    const-class v2, Lcom/google/android/recaptcha/internal/zzfr;

    const-string v3, "zzf"

    const-string v4, "zzg"

    const-string v5, "zzh"

    const-string v6, "zzi"

    const-string v7, "zzj"

    const-string v8, "zzk"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/recaptcha/internal/zzfs;->zzb:Lcom/google/android/recaptcha/internal/zzfs;

    new-instance p3, Lcom/google/android/recaptcha/internal/zzij;

    const-string v0, "\u0001\u0007\u0000\u0001\u0002\u0008\u0007\u0000\u0001\u0001\u0002\u041b\u0003\u1008\u0000\u0004\u1003\u0001\u0005\u1002\u0002\u0006\u1000\u0003\u0007\u100a\u0004\u0008\u1008\u0005"

    invoke-direct {p3, p2, v0, p1}, Lcom/google/android/recaptcha/internal/zzij;-><init>(Lcom/google/android/recaptcha/internal/zzhy;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p3

    :pswitch_5
    iget-byte p1, p0, Lcom/google/android/recaptcha/internal/zzfs;->zzl:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput-byte p1, p0, Lcom/google/android/recaptcha/internal/zzfs;->zzl:B

    return-object p3

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
