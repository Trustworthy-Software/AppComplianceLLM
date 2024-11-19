.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzvg;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzair;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzakd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;,
        Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzair<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzvg;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzakd;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

.field private static volatile zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzako<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzvg;",
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
            "Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;-><init>()V

    .line 29
    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

    .line 30
    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzair;)V

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;-><init>()V

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zzo()Lcom/google/android/gms/internal/firebase-auth-api/zzaix;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzaix;

    .line 34
    return-void
.end method

.method public static zza(Ljava/io/InputStream;Lcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzvg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzair;Ljava/io/InputStream;Lcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

    return-object p0
.end method

.method public static zza([BLcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzvg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzaja;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzair;[BLcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;)V
    .locals 2

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    nop

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzaix;

    .line 40
    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaix;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    nop

    .line 42
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaix;)Lcom/google/android/gms/internal/firebase-auth-api/zzaix;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzaix;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzaix;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaix;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvg;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zzc(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvg;Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;)V

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zza;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzl()Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zza;

    return-object v0
.end method

.method private final zzc(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zze:I

    .line 46
    return-void
.end method

.method static synthetic zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzvg;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzaix;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaix;->size()I

    move-result v0

    return v0
.end method

.method public final zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzaix;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaix;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;

    return-object p1
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8
    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/zzvh;->zza:[I

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
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;

    .line 16
    if-nez p1, :cond_1

    .line 17
    const-class p2, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

    monitor-enter p2

    .line 18
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;

    .line 19
    if-nez p1, :cond_0

    .line 20
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zza;

    sget-object p3, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zza;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzair;)V

    .line 21
    sput-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzako;

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
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

    return-object p1

    .line 11
    :pswitch_4
    const-string p1, "zze"

    const-string p2, "zzf"

    const-class p3, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 12
    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b"

    .line 13
    sget-object p3, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zza;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzvh;)V

    return-object p1

    .line 9
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;-><init>()V

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

.method public final zzb()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zze:I

    return v0
.end method

.method public final zze()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzvg$zzb;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvg;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzaix;

    return-object v0
.end method
