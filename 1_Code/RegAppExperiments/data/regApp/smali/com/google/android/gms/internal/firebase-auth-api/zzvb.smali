.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzvb;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzair;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzakd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase-auth-api/zzvb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzair<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzvb;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzvb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzakd;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

.field private static volatile zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzako<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzvb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:Ljava/lang/String;

.field private zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

.field private zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;-><init>()V

    .line 29
    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    .line 30
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzair;)V

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zze:Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    .line 35
    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/firebase-auth-api/zzvb$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzl()Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvb$zza;

    return-object v0
.end method

.method public static zza([BLcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzvb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzaja;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzair;[BLcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)V
    .locals 0

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    .line 46
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvb;Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvb;Lcom/google/android/gms/internal/firebase-auth-api/zzvs;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvs;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvb;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zza(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvs;)V
    .locals 0

    .line 39
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zzg:I

    .line 40
    return-void
.end method

.method private final zza(Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zze:Ljava/lang/String;

    .line 43
    return-void
.end method

.method static synthetic zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzvb;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    return-object v0
.end method

.method public static zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzvb;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8
    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/zzvd;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 26
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 25
    :pswitch_0
    return-object p2

    .line 24
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;

    .line 16
    if-nez p1, :cond_1

    .line 17
    const-class p2, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    monitor-enter p2

    .line 18
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;

    .line 19
    if-nez p1, :cond_0

    .line 20
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zza;

    sget-object p3, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zza;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzair;)V

    .line 21
    sput-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;

    .line 22
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 23
    :cond_1
    :goto_0
    return-object p1

    .line 14
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    return-object p1

    .line 11
    :pswitch_4
    const-string p1, "zze"

    const-string p2, "zzf"

    const-string p3, "zzg"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 12
    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\n\u0003\u000c"

    .line 13
    sget-object p3, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzvb$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb$zza;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzvd;)V

    return-object p1

    .line 9
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzvs;
    .locals 1

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zzg:I

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    move-result-object v0

    .line 6
    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    :cond_0
    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    return-object v0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvb;->zze:Ljava/lang/String;

    return-object v0
.end method
