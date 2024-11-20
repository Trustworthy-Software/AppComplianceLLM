.class public final Lcom/google/android/recaptcha/internal/zzmd;
.super Lcom/google/android/recaptcha/internal/zzgo;
.source "com.google.android.recaptcha:recaptcha@@18.1.2"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzhz;


# static fields
.field private static final zzb:Lcom/google/android/recaptcha/internal/zzmd;


# instance fields
.field private zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/recaptcha/internal/zzmd;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzmd;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzmd;->zzb:Lcom/google/android/recaptcha/internal/zzmd;

    const-class v1, Lcom/google/android/recaptcha/internal/zzmd;

    invoke-static {v1, v0}, Lcom/google/android/recaptcha/internal/zzgo;->zzC(Ljava/lang/Class;Lcom/google/android/recaptcha/internal/zzgo;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/recaptcha/internal/zzgo;-><init>()V

    return-void
.end method

.method static synthetic zzf()Lcom/google/android/recaptcha/internal/zzmd;
    .locals 1

    sget-object v0, Lcom/google/android/recaptcha/internal/zzmd;->zzb:Lcom/google/android/recaptcha/internal/zzmd;

    return-object v0
.end method

.method public static zzg([B)Lcom/google/android/recaptcha/internal/zzmd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/recaptcha/internal/zzgy;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/recaptcha/internal/zzmd;->zzb:Lcom/google/android/recaptcha/internal/zzmd;

    invoke-static {v0, p0}, Lcom/google/android/recaptcha/internal/zzgo;->zzu(Lcom/google/android/recaptcha/internal/zzgo;[B)Lcom/google/android/recaptcha/internal/zzgo;

    move-result-object p0

    check-cast p0, Lcom/google/android/recaptcha/internal/zzmd;

    return-object p0
.end method


# virtual methods
.method protected final zzh(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-object p2

    .line 1
    :pswitch_1
    sget-object p1, Lcom/google/android/recaptcha/internal/zzmd;->zzb:Lcom/google/android/recaptcha/internal/zzmd;

    return-object p1

    :pswitch_2
    new-instance p1, Lcom/google/android/recaptcha/internal/zzmc;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/recaptcha/internal/zzmc;-><init>(Lcom/google/android/recaptcha/internal/zzlv;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/google/android/recaptcha/internal/zzmd;

    invoke-direct {p1}, Lcom/google/android/recaptcha/internal/zzmd;-><init>()V

    return-object p1

    .line 2
    :pswitch_4
    const-string p1, "zzd"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/recaptcha/internal/zzmd;->zzb:Lcom/google/android/recaptcha/internal/zzmd;

    const-string p3, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000c"

    invoke-static {p2, p3, p1}, Lcom/google/android/recaptcha/internal/zzmd;->zzz(Lcom/google/android/recaptcha/internal/zzhy;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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

.method public final zzi()Lcom/google/android/recaptcha/internal/zzmf;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/recaptcha/internal/zzmd;->zzd:I

    invoke-static {v0}, Lcom/google/android/recaptcha/internal/zzmf;->zzb(I)Lcom/google/android/recaptcha/internal/zzmf;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/recaptcha/internal/zzmf;->zzk:Lcom/google/android/recaptcha/internal/zzmf;

    :cond_0
    return-object v0
.end method
