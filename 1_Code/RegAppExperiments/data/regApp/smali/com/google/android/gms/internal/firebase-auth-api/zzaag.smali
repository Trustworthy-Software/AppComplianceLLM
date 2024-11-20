.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzaag;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzadc;
.source "com.google.firebase:firebase-auth@@22.2.0"


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    .line 290
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;-><init>()V

    .line 291
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;

    invoke-direct {v0, p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;-><init>(Lcom/google/firebase/FirebaseApp;Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacb;

    .line 292
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zzb:Ljava/util/concurrent/Executor;

    .line 293
    return-void
.end method

.method static zza(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/firebase-auth-api/zzaex;)Lcom/google/firebase/auth/internal/zzv;
    .locals 6

    .line 268
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 271
    new-instance v1, Lcom/google/firebase/auth/internal/zzr;

    const-string v2, "firebase"

    invoke-direct {v1, p1, v2}, Lcom/google/firebase/auth/internal/zzr;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzaex;Ljava/lang/String;)V

    .line 272
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzl()Ljava/util/List;

    move-result-object v1

    .line 274
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 275
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 276
    new-instance v3, Lcom/google/firebase/auth/internal/zzr;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/firebase-auth-api/zzafn;

    invoke-direct {v3, v4}, Lcom/google/firebase/auth/internal/zzr;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzafn;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 278
    :cond_0
    new-instance v1, Lcom/google/firebase/auth/internal/zzv;

    invoke-direct {v1, p0, v0}, Lcom/google/firebase/auth/internal/zzv;-><init>(Lcom/google/firebase/FirebaseApp;Ljava/util/List;)V

    .line 279
    new-instance p0, Lcom/google/firebase/auth/internal/zzx;

    .line 280
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzb()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zza()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/firebase/auth/internal/zzx;-><init>(JJ)V

    .line 281
    invoke-virtual {v1, p0}, Lcom/google/firebase/auth/internal/zzv;->zza(Lcom/google/firebase/auth/internal/zzx;)V

    .line 282
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzn()Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/google/firebase/auth/internal/zzv;->zza(Z)V

    .line 283
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zze()Lcom/google/firebase/auth/zzf;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/firebase/auth/internal/zzv;->zza(Lcom/google/firebase/auth/zzf;)V

    .line 284
    nop

    .line 285
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzk()Ljava/util/List;

    move-result-object p0

    .line 286
    invoke-static {p0}, Lcom/google/firebase/auth/internal/zzba;->zza(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 287
    invoke-virtual {v1, p0}, Lcom/google/firebase/auth/FirebaseUser;->zzb(Ljava/util/List;)V

    .line 288
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzap;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/firebase/auth/internal/zzv;->zzc(Ljava/util/List;)V

    .line 289
    return-object v1
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafa;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaaq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaaq;-><init>()V

    .line 49
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/ActionCodeSettings;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/ActionCodeSettings;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 157
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;

    invoke-direct {v0, p3, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;-><init>(Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)V

    .line 158
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzabd;

    .line 159
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzg;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/AuthCredential;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzg;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 174
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabh;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzabh;-><init>(Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 176
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzabh;

    .line 177
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/EmailAuthCredential;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzg;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/EmailAuthCredential;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzg;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 186
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabm;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzabm;-><init>(Lcom/google/firebase/auth/EmailAuthCredential;Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 188
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzabm;

    .line 189
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;Lcom/google/firebase/auth/internal/zzbv;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/AuthCredential;",
            "Lcom/google/firebase/auth/internal/zzbv;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 52
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-virtual {p2}, Lcom/google/firebase/auth/FirebaseUser;->zzf()Ljava/util/List;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/google/firebase/auth/AuthCredential;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x4277

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 59
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzace;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 60
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 61
    :cond_0
    instance-of v0, p3, Lcom/google/firebase/auth/EmailAuthCredential;

    if-eqz v0, :cond_2

    .line 62
    check-cast p3, Lcom/google/firebase/auth/EmailAuthCredential;

    invoke-virtual {p3}, Lcom/google/firebase/auth/EmailAuthCredential;->zzf()Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    nop

    .line 64
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaas;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaas;-><init>(Lcom/google/firebase/auth/EmailAuthCredential;)V

    .line 65
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 66
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 67
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 68
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/internal/zzao;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaas;

    .line 69
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 70
    return-object p1

    .line 71
    :cond_1
    nop

    .line 72
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaat;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaat;-><init>(Lcom/google/firebase/auth/EmailAuthCredential;)V

    .line 73
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 74
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 75
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 76
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/internal/zzao;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaat;

    .line 77
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 78
    return-object p1

    .line 79
    :cond_2
    instance-of v0, p3, Lcom/google/firebase/auth/PhoneAuthCredential;

    if-eqz v0, :cond_3

    .line 80
    check-cast p3, Lcom/google/firebase/auth/PhoneAuthCredential;

    .line 81
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzado;->zza()V

    .line 82
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaau;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaau;-><init>(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    .line 83
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 84
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 85
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 86
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/internal/zzao;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaau;

    .line 87
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 88
    return-object p1

    .line 89
    :cond_3
    nop

    .line 90
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaar;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaar;-><init>(Lcom/google/firebase/auth/AuthCredential;)V

    .line 95
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 96
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 97
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 98
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/internal/zzao;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaar;

    .line 99
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 100
    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzbv;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/AuthCredential;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzbv;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaaw;

    invoke-direct {v0, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaaw;-><init>(Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 103
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 104
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 105
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/internal/zzao;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaaw;

    .line 106
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/EmailAuthCredential;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzbv;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/EmailAuthCredential;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzbv;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 113
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaay;

    invoke-direct {v0, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaay;-><init>(Lcom/google/firebase/auth/EmailAuthCredential;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 115
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 116
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 117
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/internal/zzao;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaay;

    .line 118
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/PhoneAuthCredential;Lcom/google/firebase/auth/internal/zzbv;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/PhoneAuthCredential;",
            "Lcom/google/firebase/auth/internal/zzbv;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 249
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzado;->zza()V

    .line 250
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabw;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzabw;-><init>(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    .line 251
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 252
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 253
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 254
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/internal/zzao;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzabw;

    .line 255
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/PhoneAuthCredential;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzbv;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/PhoneAuthCredential;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzbv;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 137
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzado;->zza()V

    .line 138
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabc;

    invoke-direct {v0, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzabc;-><init>(Lcom/google/firebase/auth/PhoneAuthCredential;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 140
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 141
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 142
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/internal/zzao;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzabc;

    .line 143
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/PhoneMultiFactorAssertion;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzg;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/PhoneMultiFactorAssertion;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzg;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzado;->zza()V

    .line 32
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaao;

    const/4 v1, 0x0

    invoke-direct {v0, p3, p4, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaao;-><init>(Lcom/google/firebase/auth/MultiFactorAssertion;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    .line 34
    if-eqz p2, :cond_0

    .line 35
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    .line 36
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/TotpMultiFactorAssertion;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzg;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/TotpMultiFactorAssertion;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzg;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaao;

    invoke-direct {v0, p3, p4, p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaao;-><init>(Lcom/google/firebase/auth/MultiFactorAssertion;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    invoke-virtual {p1, p6}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    .line 39
    if-eqz p2, :cond_0

    .line 40
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    .line 41
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/UserProfileChangeRequest;Lcom/google/firebase/auth/internal/zzbv;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/UserProfileChangeRequest;",
            "Lcom/google/firebase/auth/internal/zzbv;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 256
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabv;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzabv;-><init>(Lcom/google/firebase/auth/UserProfileChangeRequest;)V

    .line 257
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 258
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 259
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 260
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/internal/zzao;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzabv;

    .line 261
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/internal/zzbv;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/internal/zzbv;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 151
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzabe;-><init>()V

    .line 152
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 153
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 154
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 155
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/internal/zzao;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzabe;

    .line 156
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzbv;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzbv;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/GetTokenResult;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaan;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaan;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 44
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 45
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 46
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/internal/zzao;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaan;

    .line 47
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzbv;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzbv;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 204
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabp;

    .line 205
    invoke-virtual {p2}, Lcom/google/firebase/auth/FirebaseUser;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzabp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 207
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 208
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 209
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/internal/zzao;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzabp;

    .line 210
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzbv;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzbv;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 125
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaba;

    invoke-direct {v0, p3, p4, p5, p6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaba;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 127
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 128
    invoke-virtual {p1, p7}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 129
    invoke-virtual {p1, p7}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/internal/zzao;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaba;

    .line 130
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/PhoneAuthCredential;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzg;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/PhoneAuthCredential;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzg;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 190
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzado;->zza()V

    .line 191
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabl;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzabl;-><init>(Lcom/google/firebase/auth/PhoneAuthCredential;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 193
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzabl;

    .line 194
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/PhoneMultiFactorAssertion;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzg;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/PhoneMultiFactorAssertion;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzg;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzado;->zza()V

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;

    .line 24
    invoke-virtual {p3}, Lcom/google/firebase/auth/FirebaseUser;->zze()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, p4, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;-><init>(Lcom/google/firebase/auth/MultiFactorAssertion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    .line 26
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/TotpMultiFactorAssertion;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzg;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/TotpMultiFactorAssertion;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzg;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;

    .line 28
    invoke-virtual {p3}, Lcom/google/firebase/auth/FirebaseUser;->zze()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;-><init>(Lcom/google/firebase/auth/MultiFactorAssertion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    invoke-virtual {p1, p6}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    .line 30
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/internal/zzg;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/internal/zzg;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 170
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabi;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzabi;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 172
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzabi;

    .line 173
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/ActionCodeSettings;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 160
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/google/firebase/auth/ActionCodeSettings;->zza(I)V

    .line 161
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;

    const-string v6, "sendPasswordResetEmail"

    move-object v1, v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;-><init>(Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;

    .line 163
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaaf;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaaf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaaf;

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzg;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzg;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 178
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabk;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzabk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 180
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzabk;

    .line 181
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaah;

    invoke-direct {v0, p2, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaah;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaah;

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzg;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzg;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaak;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaak;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 12
    invoke-virtual {p1, p6}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaak;

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/internal/zzal;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/internal/zzal;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaaj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaaj;-><init>()V

    .line 15
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 16
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 17
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/internal/zzao;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaaj;

    .line 18
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/auth/internal/zzag;Lcom/google/firebase/auth/PhoneMultiFactorInfo;Ljava/lang/String;JZZLjava/lang/String;Ljava/lang/String;ZLcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Ljava/util/concurrent/Executor;Landroid/app/Activity;)Lcom/google/android/gms/tasks/Task;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/internal/zzag;",
            "Lcom/google/firebase/auth/PhoneMultiFactorInfo;",
            "Ljava/lang/String;",
            "JZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/app/Activity;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 200
    new-instance v11, Lcom/google/android/gms/internal/firebase-auth-api/zzabq;

    .line 201
    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzag;->zzc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v11

    move-object v1, p2

    move-object v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/firebase-auth-api/zzabq;-><init>(Lcom/google/firebase/auth/PhoneMultiFactorInfo;Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;Ljava/lang/String;Z)V

    .line 202
    invoke-virtual {p2}, Lcom/google/firebase/auth/MultiFactorInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p11

    move-object/from16 v2, p12

    move-object/from16 v3, p13

    invoke-virtual {v11, v1, v3, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    .line 203
    move-object v0, p0

    invoke-virtual {p0, v11}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1
.end method

.method public final zza(Lcom/google/firebase/auth/internal/zzag;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/internal/zzag;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafz;",
            ">;"
        }
    .end annotation

    .line 198
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabn;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzabn;-><init>(Lcom/google/firebase/auth/internal/zzag;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/auth/internal/zzag;Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;Ljava/lang/String;ZLcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Ljava/util/concurrent/Executor;Landroid/app/Activity;)Lcom/google/android/gms/tasks/Task;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/internal/zzag;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/app/Activity;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 195
    new-instance v11, Lcom/google/android/gms/internal/firebase-auth-api/zzabo;

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/firebase-auth-api/zzabo;-><init>(Lcom/google/firebase/auth/internal/zzag;Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;Ljava/lang/String;Z)V

    .line 196
    move-object v0, p2

    move-object/from16 v1, p11

    move-object/from16 v2, p12

    move-object/from16 v3, p13

    invoke-virtual {v11, v1, v3, v2, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    .line 197
    move-object v0, p0

    invoke-virtual {p0, v11}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1
.end method

.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 168
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabf;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzabf;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaff;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaap;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaap;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/ActionCodeSettings;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 262
    const/4 v0, 0x7

    invoke-virtual {p3, v0}, Lcom/google/firebase/auth/ActionCodeSettings;->zza(I)V

    .line 263
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaby;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaby;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)V

    .line 264
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/firebase-auth-api/zzafq;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Landroid/app/Activity;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 294
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaca;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaca;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzafq;)V

    .line 295
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 296
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzafq;->zzd()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p4, p5, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaca;

    .line 297
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    .line 298
    return-void
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzbv;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/AuthCredential;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzbv;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 107
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaav;

    invoke-direct {v0, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaav;-><init>(Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 109
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 110
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 111
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/internal/zzao;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaav;

    .line 112
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/EmailAuthCredential;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzbv;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/EmailAuthCredential;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzbv;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 119
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaax;

    invoke-direct {v0, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaax;-><init>(Lcom/google/firebase/auth/EmailAuthCredential;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 121
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 122
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 123
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/internal/zzao;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaax;

    .line 124
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/PhoneAuthCredential;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzbv;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/PhoneAuthCredential;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzbv;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 144
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzado;->zza()V

    .line 145
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabb;

    invoke-direct {v0, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzabb;-><init>(Lcom/google/firebase/auth/PhoneAuthCredential;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 147
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 148
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 149
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/internal/zzao;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzabb;

    .line 150
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzbv;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzbv;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 211
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 213
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    invoke-virtual {p2}, Lcom/google/firebase/auth/FirebaseUser;->zzf()Ljava/util/List;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_0

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Lcom/google/firebase/auth/FirebaseUser;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    :cond_1
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x4278

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 218
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzace;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 219
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 220
    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_3
    goto :goto_0

    :pswitch_0
    const-string v0, "password"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 229
    nop

    .line 230
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabr;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzabr;-><init>(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 232
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 233
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 234
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/internal/zzao;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzabr;

    .line 235
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 236
    return-object p1

    .line 221
    :pswitch_1
    nop

    .line 222
    new-instance p3, Lcom/google/android/gms/internal/firebase-auth-api/zzabs;

    invoke-direct {p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzabs;-><init>()V

    .line 223
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 224
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 225
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 226
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/internal/zzao;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzabs;

    .line 227
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 228
    return-object p1

    :pswitch_data_0
    .packed-switch 0x4889ba9b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzbv;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzbv;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaaz;

    invoke-direct {v0, p3, p4, p5, p6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaaz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 133
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 134
    invoke-virtual {p1, p7}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 135
    invoke-virtual {p1, p7}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/internal/zzao;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaaz;

    .line 136
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/ActionCodeSettings;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 164
    const/4 v0, 0x6

    invoke-virtual {p3, v0}, Lcom/google/firebase/auth/ActionCodeSettings;->zza(I)V

    .line 165
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;

    const-string v6, "sendSignInLinkToEmail"

    move-object v1, v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;-><init>(Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzabg;

    .line 167
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/ActionCodeResult;",
            ">;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaai;

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzg;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzg;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 182
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabj;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzabj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 184
    invoke-virtual {p1, p6}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzabj;

    .line 185
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzbv;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzbv;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 237
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabu;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzabu;-><init>(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 239
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 240
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 241
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/internal/zzao;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzabu;

    .line 242
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/SignInMethodQueryResult;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaam;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaam;

    .line 21
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzbv;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/internal/zzbv;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 243
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabt;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzabt;-><init>(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 245
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 246
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    .line 247
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/internal/zzao;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzabt;

    .line 248
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 265
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzabx;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzabx;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzabx;

    .line 267
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzade;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
