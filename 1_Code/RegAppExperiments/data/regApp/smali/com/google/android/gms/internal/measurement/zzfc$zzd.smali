.class public final Lcom/google/android/gms/internal/measurement/zzfc$zzd;
.super Lcom/google/android/gms/internal/measurement/zzix;
.source "com.google.android.gms:play-services-measurement@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzkl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzfc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzfc$zzd$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzix<",
        "Lcom/google/android/gms/internal/measurement/zzfc$zzd;",
        "Lcom/google/android/gms/internal/measurement/zzfc$zzd$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzkl;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzfc$zzd;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zzkw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzkw<",
            "Lcom/google/android/gms/internal/measurement/zzfc$zzd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:J

.field private zzg:Ljava/lang/String;

.field private zzh:I

.field private zzi:Lcom/google/android/gms/internal/measurement/zzjf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzjf<",
            "Lcom/google/android/gms/internal/measurement/zzfc$zzg;",
            ">;"
        }
    .end annotation
.end field

.field private zzj:Lcom/google/android/gms/internal/measurement/zzjf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzjf<",
            "Lcom/google/android/gms/internal/measurement/zzfc$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private zzk:Lcom/google/android/gms/internal/measurement/zzjf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzjf<",
            "Lcom/google/android/gms/internal/measurement/zzew$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzl:Ljava/lang/String;

.field private zzm:Z

.field private zzn:Lcom/google/android/gms/internal/measurement/zzjf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzjf<",
            "Lcom/google/android/gms/internal/measurement/zzfp$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private zzo:Lcom/google/android/gms/internal/measurement/zzjf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzjf<",
            "Lcom/google/android/gms/internal/measurement/zzfc$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private zzp:Ljava/lang/String;

.field private zzq:Ljava/lang/String;

.field private zzr:Ljava/lang/String;

.field private zzs:Ljava/lang/String;

.field private zzt:Lcom/google/android/gms/internal/measurement/zzfc$zza;

.field private zzu:Lcom/google/android/gms/internal/measurement/zzfc$zze;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfc$zzd;-><init>()V

    .line 37
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzfc$zzd;

    .line 38
    const-class v1, Lcom/google/android/gms/internal/measurement/zzfc$zzd;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzix;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzix;)V

    .line 39
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzix;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzg:Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzcc()Lcom/google/android/gms/internal/measurement/zzjf;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzi:Lcom/google/android/gms/internal/measurement/zzjf;

    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzcc()Lcom/google/android/gms/internal/measurement/zzjf;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzj:Lcom/google/android/gms/internal/measurement/zzjf;

    .line 44
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzcc()Lcom/google/android/gms/internal/measurement/zzjf;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzk:Lcom/google/android/gms/internal/measurement/zzjf;

    .line 45
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzl:Ljava/lang/String;

    .line 46
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzcc()Lcom/google/android/gms/internal/measurement/zzjf;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzn:Lcom/google/android/gms/internal/measurement/zzjf;

    .line 47
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzcc()Lcom/google/android/gms/internal/measurement/zzjf;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzo:Lcom/google/android/gms/internal/measurement/zzjf;

    .line 48
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzp:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzq:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzr:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzs:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private final zza(ILcom/google/android/gms/internal/measurement/zzfc$zzc;)V
    .locals 2

    .line 57
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    nop

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzj:Lcom/google/android/gms/internal/measurement/zzjf;

    .line 60
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzjf;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    nop

    .line 62
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzix;->zza(Lcom/google/android/gms/internal/measurement/zzjf;)Lcom/google/android/gms/internal/measurement/zzjf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzj:Lcom/google/android/gms/internal/measurement/zzjf;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzj:Lcom/google/android/gms/internal/measurement/zzjf;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjf;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfc$zzd;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzt()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfc$zzd;ILcom/google/android/gms/internal/measurement/zzfc$zzc;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zza(ILcom/google/android/gms/internal/measurement/zzfc$zzc;)V

    return-void
.end method

.method public static zze()Lcom/google/android/gms/internal/measurement/zzfc$zzd$zza;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzfc$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzix;->zzbx()Lcom/google/android/gms/internal/measurement/zzix$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfc$zzd$zza;

    return-object v0
.end method

.method static synthetic zzf()Lcom/google/android/gms/internal/measurement/zzfc$zzd;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzfc$zzd;

    return-object v0
.end method

.method public static zzg()Lcom/google/android/gms/internal/measurement/zzfc$zzd;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzfc$zzd;

    return-object v0
.end method

.method private final zzt()V
    .locals 1

    .line 55
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzcc()Lcom/google/android/gms/internal/measurement/zzjf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzk:Lcom/google/android/gms/internal/measurement/zzjf;

    .line 56
    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzn:Lcom/google/android/gms/internal/measurement/zzjf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzjf;->size()I

    move-result v0

    return v0
.end method

.method public final zza(I)Lcom/google/android/gms/internal/measurement/zzfc$zzc;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzj:Lcom/google/android/gms/internal/measurement/zzjf;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjf;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfc$zzc;

    return-object p1
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfb;->zza:[I

    const/4 v1, 0x1

    add-int/lit8 v2, p1, -0x1

    aget v0, v0, v2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 27
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 26
    :pswitch_0
    return-object v2

    .line 25
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 16
    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzd:Lcom/google/android/gms/internal/measurement/zzkw;

    .line 17
    if-nez v0, :cond_1

    .line 18
    const-class v1, Lcom/google/android/gms/internal/measurement/zzfc$zzd;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzd:Lcom/google/android/gms/internal/measurement/zzkw;

    .line 20
    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzix$zza;

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzfc$zzd;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zzix$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzix;)V

    .line 22
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzd:Lcom/google/android/gms/internal/measurement/zzkw;

    .line 23
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 24
    :cond_1
    :goto_0
    return-object v0

    .line 15
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzfc$zzd;

    return-object v0

    .line 12
    :pswitch_4
    const-string v1, "zze"

    const-string v2, "zzf"

    const-string v3, "zzg"

    const-string v4, "zzh"

    const-string v5, "zzi"

    const-class v6, Lcom/google/android/gms/internal/measurement/zzfc$zzg;

    const-string v7, "zzj"

    const-class v8, Lcom/google/android/gms/internal/measurement/zzfc$zzc;

    const-string v9, "zzk"

    const-class v10, Lcom/google/android/gms/internal/measurement/zzew$zza;

    const-string v11, "zzl"

    const-string v12, "zzm"

    const-string v13, "zzn"

    const-class v14, Lcom/google/android/gms/internal/measurement/zzfp$zzc;

    const-string v15, "zzo"

    const-class v16, Lcom/google/android/gms/internal/measurement/zzfc$zzb;

    const-string v17, "zzp"

    const-string v18, "zzq"

    const-string v19, "zzr"

    const-string v20, "zzs"

    const-string v21, "zzt"

    const-string v22, "zzu"

    filled-new-array/range {v1 .. v22}, [Ljava/lang/Object;

    move-result-object v0

    .line 13
    const-string v1, "\u0001\u0010\u0000\u0001\u0001\u0010\u0010\u0000\u0005\u0000\u0001\u1002\u0000\u0002\u1008\u0001\u0003\u1004\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007\u1008\u0003\u0008\u1007\u0004\t\u001b\n\u001b\u000b\u1008\u0005\u000c\u1008\u0006\r\u1008\u0007\u000e\u1008\u0008\u000f\u1009\t\u0010\u1009\n"

    .line 14
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzfc$zzd;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zza(Lcom/google/android/gms/internal/measurement/zzkj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 11
    :pswitch_5
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfc$zzd$zza;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/measurement/zzfc$zzd$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzfb;)V

    return-object v0

    .line 10
    :pswitch_6
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfc$zzd;-><init>()V

    return-object v0

    nop

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
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzj:Lcom/google/android/gms/internal/measurement/zzjf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzjf;->size()I

    move-result v0

    return v0
.end method

.method public final zzc()J
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzf:J

    return-wide v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/measurement/zzfc$zza;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzt:Lcom/google/android/gms/internal/measurement/zzfc$zza;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfc$zza;->zzb()Lcom/google/android/gms/internal/measurement/zzfc$zza;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzr:Ljava/lang/String;

    return-object v0
.end method

.method public final zzj()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzq:Ljava/lang/String;

    return-object v0
.end method

.method public final zzk()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzp:Ljava/lang/String;

    return-object v0
.end method

.method public final zzl()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzew$zza;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzk:Lcom/google/android/gms/internal/measurement/zzjf;

    return-object v0
.end method

.method public final zzm()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfc$zzb;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzo:Lcom/google/android/gms/internal/measurement/zzjf;

    return-object v0
.end method

.method public final zzn()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfp$zzc;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzn:Lcom/google/android/gms/internal/measurement/zzjf;

    return-object v0
.end method

.method public final zzo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfc$zzg;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzi:Lcom/google/android/gms/internal/measurement/zzjf;

    return-object v0
.end method

.method public final zzp()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzm:Z

    return v0
.end method

.method public final zzq()Z
    .locals 1

    .line 66
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zze:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzr()Z
    .locals 1

    .line 67
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zze:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzs()Z
    .locals 2

    .line 68
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
