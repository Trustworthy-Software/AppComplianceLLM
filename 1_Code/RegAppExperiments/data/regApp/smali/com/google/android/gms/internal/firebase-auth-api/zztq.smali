.class public final Lcom/google/android/gms/internal/firebase-auth-api/zztq;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzair;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzakd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase-auth-api/zztq$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzair<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zztq;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zztq$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzakd;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zztq;

.field private static volatile zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzako<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zztq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/firebase-auth-api/zztv;

.field private zzg:Lcom/google/android/gms/internal/firebase-auth-api/zztm;

.field private zzh:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zztq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zztq;-><init>()V

    .line 28
    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zztq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zztq;

    .line 29
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zztq;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzair;)V

    .line 30
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;-><init>()V

    .line 32
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-auth-api/zztk;)V
    .locals 0

    .line 40
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zztk;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztq;->zzh:I

    .line 41
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-auth-api/zztm;)V
    .locals 0

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztq;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zztm;

    .line 38
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztq;->zze:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztq;->zze:I

    .line 39
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zztq;Lcom/google/android/gms/internal/firebase-auth-api/zztk;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zztq;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zztk;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zztq;Lcom/google/android/gms/internal/firebase-auth-api/zztm;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zztq;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zztm;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zztq;Lcom/google/android/gms/internal/firebase-auth-api/zztv;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zztq;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zztv;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-auth-api/zztv;)V
    .locals 0

    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztq;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zztv;

    .line 44
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztq;->zze:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztq;->zze:I

    .line 45
    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/firebase-auth-api/zztq$zza;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zztq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zztq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzl()Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zztq$zza;

    return-object v0
.end method

.method static synthetic zzd()Lcom/google/android/gms/internal/firebase-auth-api/zztq;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zztq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zztq;

    return-object v0
.end method

.method public static zze()Lcom/google/android/gms/internal/firebase-auth-api/zztq;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zztq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zztq;

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/firebase-auth-api/zztk;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztq;->zzh:I

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zztk;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zztk;

    move-result-object v0

    .line 2
    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zztk;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zztk;

    :cond_0
    return-object v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 8
    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/zztp;->zza:[I

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
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zztq;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;

    .line 16
    if-nez p1, :cond_1

    .line 17
    const-class p2, Lcom/google/android/gms/internal/firebase-auth-api/zztq;

    monitor-enter p2

    .line 18
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zztq;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;

    .line 19
    if-nez p1, :cond_0

    .line 20
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zza;

    sget-object p3, Lcom/google/android/gms/internal/firebase-auth-api/zztq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zztq;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zza;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzair;)V

    .line 21
    sput-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zztq;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;

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
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zztq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zztq;

    return-object p1

    .line 11
    :pswitch_4
    const-string p1, "zze"

    const-string p2, "zzf"

    const-string p3, "zzg"

    const-string v0, "zzh"

    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 12
    const-string p2, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u000c"

    .line 13
    sget-object p3, Lcom/google/android/gms/internal/firebase-auth-api/zztq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zztq;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zztq;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zztq$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zztq$zza;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zztp;)V

    return-object p1

    .line 9
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zztq;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zztq;-><init>()V

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

.method public final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zztm;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztq;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zztm;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zztm;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zztm;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/firebase-auth-api/zztv;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zztq;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zztv;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zztv;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zztv;

    move-result-object v0

    :cond_0
    return-object v0
.end method
