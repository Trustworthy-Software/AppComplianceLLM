.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzsq;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzair;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzakd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase-auth-api/zzsq$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzair<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzsq;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzsq$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzakd;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzsq;

.field private static volatile zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzako<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzsq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzsr;

.field private zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzsq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzsq;-><init>()V

    .line 26
    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzsq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzsq;

    .line 27
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzsq;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzair;)V

    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;-><init>()V

    .line 30
    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Lcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzsq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzaja;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzsq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzsq;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzair;Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Lcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsq;

    return-object p0
.end method

.method private final zza(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsq;->zzg:I

    .line 34
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzsq;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzsq;->zza(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzsq;Lcom/google/android/gms/internal/firebase-auth-api/zzsr;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzsq;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzsr;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzsr;)V
    .locals 0

    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsq;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzsr;

    .line 37
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsq;->zze:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsq;->zze:I

    .line 38
    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzsq$zza;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzsq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzsq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzl()Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzsq$zza;

    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzsq;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzsq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzsq;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsq;->zzg:I

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/zzsp;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 24
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 23
    :pswitch_0
    return-object p2

    .line 22
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzsq;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;

    .line 14
    if-nez p1, :cond_1

    .line 15
    const-class p2, Lcom/google/android/gms/internal/firebase-auth-api/zzsq;

    monitor-enter p2

    .line 16
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzsq;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;

    .line 17
    if-nez p1, :cond_0

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zza;

    sget-object p3, Lcom/google/android/gms/internal/firebase-auth-api/zzsq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzsq;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zza;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzair;)V

    .line 19
    sput-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzsq;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;

    .line 20
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 21
    :cond_1
    :goto_0
    return-object p1

    .line 12
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzsq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzsq;

    return-object p1

    .line 9
    :pswitch_4
    const-string p1, "zze"

    const-string p2, "zzf"

    const-string p3, "zzg"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 10
    const-string p2, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u000b"

    .line 11
    sget-object p3, Lcom/google/android/gms/internal/firebase-auth-api/zzsq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzsq;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzsq;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzsq$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzsq$zza;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzsp;)V

    return-object p1

    .line 7
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzsq;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzsq;-><init>()V

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

.method public final zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzsr;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzsq;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzsr;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzsr;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzsr;

    move-result-object v0

    :cond_0
    return-object v0
.end method
