.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzse;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzair;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzakd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase-auth-api/zzse$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzair<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzse;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzse$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzakd;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzse;

.field private static volatile zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzako<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzsi;

.field private zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzuc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzse;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzse;-><init>()V

    .line 27
    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzse;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzse;

    .line 28
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzse;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzair;)V

    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;-><init>()V

    .line 31
    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Lcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzaja;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzse;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzse;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzair;Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Lcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzse;

    return-object p0
.end method

.method private final zza(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzse;->zzf:I

    .line 44
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzse;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzse;->zza(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzse;Lcom/google/android/gms/internal/firebase-auth-api/zzsi;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzse;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzsi;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzse;Lcom/google/android/gms/internal/firebase-auth-api/zzuc;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzse;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuc;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzsi;)V
    .locals 0

    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzse;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzsi;

    .line 37
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzse;->zze:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzse;->zze:I

    .line 38
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuc;)V
    .locals 0

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzse;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzuc;

    .line 41
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzse;->zze:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzse;->zze:I

    .line 42
    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzse$zza;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzse;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzse;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzl()Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzse$zza;

    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzse;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzse;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzse;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzse;->zzf:I

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 7
    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/zzsd;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 25
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 24
    :pswitch_0
    return-object p2

    .line 23
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzse;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;

    .line 15
    if-nez p1, :cond_1

    .line 16
    const-class p2, Lcom/google/android/gms/internal/firebase-auth-api/zzse;

    monitor-enter p2

    .line 17
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzse;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;

    .line 18
    if-nez p1, :cond_0

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zza;

    sget-object p3, Lcom/google/android/gms/internal/firebase-auth-api/zzse;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzse;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zza;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzair;)V

    .line 20
    sput-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzse;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;

    .line 21
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 22
    :cond_1
    :goto_0
    return-object p1

    .line 13
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzse;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzse;

    return-object p1

    .line 10
    :pswitch_4
    const-string p1, "zze"

    const-string p2, "zzf"

    const-string p3, "zzg"

    const-string v0, "zzh"

    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 11
    const-string p2, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\u1009\u0000\u0003\u1009\u0001"

    .line 12
    sget-object p3, Lcom/google/android/gms/internal/firebase-auth-api/zzse;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzse;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzse;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzse$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzse$zza;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzsd;)V

    return-object p1

    .line 8
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzse;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzse;-><init>()V

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

.method public final zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzsi;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzse;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzsi;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzsi;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzsi;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/firebase-auth-api/zzuc;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzse;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzuc;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzuc;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzuc;

    move-result-object v0

    :cond_0
    return-object v0
.end method
