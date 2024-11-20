.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzvj;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzair;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzakd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase-auth-api/zzvj$zza;,
        Lcom/google/android/gms/internal/firebase-auth-api/zzvj$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzair<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzvj;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzvj$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzakd;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvj;

.field private static volatile zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzako<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzvj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzaix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaix<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzvj$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvj;-><init>()V

    .line 24
    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvj;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvj;

    .line 25
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzvj;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzair;)V

    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;-><init>()V

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzvj;->zzo()Lcom/google/android/gms/internal/firebase-auth-api/zzaix;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvj;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzaix;

    .line 29
    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/firebase-auth-api/zzvj$zzb;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvj;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzl()Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvj$zzb;

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvj$zza;)V
    .locals 2

    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    nop

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvj;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzaix;

    .line 35
    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaix;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    nop

    .line 37
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaix;)Lcom/google/android/gms/internal/firebase-auth-api/zzaix;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvj;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzaix;

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvj;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzaix;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaix;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvj;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvj;->zzc(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvj;Lcom/google/android/gms/internal/firebase-auth-api/zzvj$zza;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvj;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvj$zza;)V

    return-void
.end method

.method static synthetic zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzvj;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvj;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvj;

    return-object v0
.end method

.method private final zzc(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvj;->zze:I

    .line 41
    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzvj$zza;
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvj;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzaix;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaix;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzvj$zza;

    return-object p1
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/zzvi;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 22
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 21
    :pswitch_0
    return-object p2

    .line 20
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzvj;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;

    .line 12
    if-nez p1, :cond_1

    .line 13
    const-class p2, Lcom/google/android/gms/internal/firebase-auth-api/zzvj;

    monitor-enter p2

    .line 14
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzvj;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;

    .line 15
    if-nez p1, :cond_0

    .line 16
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zza;

    sget-object p3, Lcom/google/android/gms/internal/firebase-auth-api/zzvj;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvj;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zza;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzair;)V

    .line 17
    sput-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzvj;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;

    .line 18
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 19
    :cond_1
    :goto_0
    return-object p1

    .line 10
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzvj;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvj;

    return-object p1

    .line 7
    :pswitch_4
    const-string p1, "zze"

    const-string p2, "zzf"

    const-class p3, Lcom/google/android/gms/internal/firebase-auth-api/zzvj$zza;

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 8
    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b"

    .line 9
    sget-object p3, Lcom/google/android/gms/internal/firebase-auth-api/zzvj;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvj;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvj;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzvj$zzb;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzvj$zzb;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzvi;)V

    return-object p1

    .line 5
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzvj;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvj;-><init>()V

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
