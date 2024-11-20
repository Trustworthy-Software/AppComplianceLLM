.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzacb;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# static fields
.field private static final zza:Lcom/google/android/gms/common/logging/Logger;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

.field private final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzadt;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/logging/Logger;

    const-string v1, "FirebaseAuthFallback:"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "FirebaseAuth"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/logging/Logger;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza:Lcom/google/android/gms/common/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/FirebaseApp;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    move-result-object v1

    .line 7
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;

    invoke-direct {v3, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacp;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/firebase-auth-api/zzacq;)V

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzadh;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    .line 8
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;

    invoke-direct {p1, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzadt;

    .line 9
    return-void
.end method

.method private static zza(JZ)Z
    .locals 2

    .line 282
    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 285
    :cond_0
    const/4 p0, 0x1

    return p0

    .line 283
    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza:Lcom/google/android/gms/common/logging/Logger;

    const-string p1, "App hash will not be appended to the request."

    const/4 p2, 0x0

    new-array v0, p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/logging/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    return p2
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzagc;Lcom/google/android/gms/internal/firebase-auth-api/zzabz;)V
    .locals 2

    .line 251
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    .line 252
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/firebase-auth-api/zzabz;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza:Lcom/google/android/gms/common/logging/Logger;

    invoke-direct {v0, p2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabz;Lcom/google/android/gms/common/logging/Logger;)V

    .line 253
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafw;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V

    .line 254
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzagj;Lcom/google/android/gms/internal/firebase-auth-api/zzabz;)V
    .locals 3

    .line 177
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza:Lcom/google/android/gms/common/logging/Logger;

    invoke-direct {v1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabz;Lcom/google/android/gms/common/logging/Logger;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzagj;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V

    .line 180
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzagk;Lcom/google/android/gms/internal/firebase-auth-api/zzabz;)V
    .locals 3

    .line 181
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza:Lcom/google/android/gms/common/logging/Logger;

    invoke-direct {v1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabz;Lcom/google/android/gms/common/logging/Logger;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzagk;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V

    .line 184
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzxv;Lcom/google/android/gms/internal/firebase-auth-api/zzabz;)V
    .locals 5

    .line 28
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxv;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxv;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxv;->zza()Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxv;->zzb()Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxv;->zzc()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza:Lcom/google/android/gms/common/logging/Logger;

    invoke-direct {v3, p2, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabz;Lcom/google/android/gms/common/logging/Logger;)V

    .line 36
    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V

    .line 37
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzxx;Lcom/google/android/gms/internal/firebase-auth-api/zzabz;)V
    .locals 3

    .line 100
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    nop

    .line 102
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxx;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxx;->zza()Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafc;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzafc;

    move-result-object p1

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza:Lcom/google/android/gms/common/logging/Logger;

    invoke-direct {v1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabz;Lcom/google/android/gms/common/logging/Logger;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafc;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V

    .line 105
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzxy;Lcom/google/android/gms/internal/firebase-auth-api/zzabz;)V
    .locals 3

    .line 93
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzafb;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzafb;

    move-result-object p1

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza:Lcom/google/android/gms/common/logging/Logger;

    invoke-direct {v1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabz;Lcom/google/android/gms/common/logging/Logger;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafb;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V

    .line 96
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzxz;Lcom/google/android/gms/internal/firebase-auth-api/zzabz;)V
    .locals 4

    .line 130
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxz;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    .line 134
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxz;->zzb()Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxz;->zza()Lcom/google/firebase/auth/ActionCodeSettings;

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza:Lcom/google/android/gms/common/logging/Logger;

    invoke-direct {v2, p2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabz;Lcom/google/android/gms/common/logging/Logger;)V

    .line 136
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zza(Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V

    .line 137
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzya;Lcom/google/android/gms/internal/firebase-auth-api/zzabz;)V
    .locals 4

    .line 117
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    nop

    .line 120
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzya;->zza()Lcom/google/firebase/auth/PhoneAuthCredential;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/PhoneAuthCredential;

    .line 121
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzya;->zzb()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 122
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    .line 123
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadn;->zza(Lcom/google/firebase/auth/PhoneAuthCredential;)Lcom/google/android/gms/internal/firebase-auth-api/zzago;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza:Lcom/google/android/gms/common/logging/Logger;

    invoke-direct {v2, p2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabz;Lcom/google/android/gms/common/logging/Logger;)V

    .line 124
    invoke-virtual {v1, p1, v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzago;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V

    .line 125
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzyb;Lcom/google/android/gms/internal/firebase-auth-api/zzabz;)V
    .locals 8

    .line 148
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    nop

    .line 151
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyb;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzafq;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzafq;

    .line 152
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafq;->zzd()Ljava/lang/String;

    move-result-object v6

    .line 153
    new-instance v7, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza:Lcom/google/android/gms/common/logging/Logger;

    invoke-direct {v7, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabz;Lcom/google/android/gms/common/logging/Logger;)V

    .line 154
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzadt;

    invoke-virtual {p2, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zzd(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 155
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafq;->zze()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 156
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzadt;

    invoke-virtual {p2, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zzc(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzadt;

    invoke-virtual {p1, v7, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzacc;Ljava/lang/String;)V

    .line 158
    return-void

    .line 159
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafq;->zzb()J

    move-result-wide v3

    .line 160
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafq;->zzf()Z

    move-result v5

    .line 161
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza(JZ)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 162
    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/zzaed;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzadt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaed;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzafq;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaed;)V

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzadt;

    move-object v1, v6

    move-object v2, v7

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;JZ)V

    .line 164
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzadt;

    .line 165
    invoke-virtual {v0, v7, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzacc;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    move-result-object v0

    .line 166
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafq;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V

    .line 167
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzyc;Lcom/google/android/gms/internal/firebase-auth-api/zzabz;)V
    .locals 7

    .line 138
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyc;->zzc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    .line 142
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyc;->zzc()Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyc;->zza()Lcom/google/firebase/auth/ActionCodeSettings;

    move-result-object v3

    .line 144
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyc;->zzd()Ljava/lang/String;

    move-result-object v4

    .line 145
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyc;->zzb()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza:Lcom/google/android/gms/common/logging/Logger;

    invoke-direct {v6, p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabz;Lcom/google/android/gms/common/logging/Logger;)V

    .line 146
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zza(Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V

    .line 147
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzyd;Lcom/google/android/gms/internal/firebase-auth-api/zzabz;)V
    .locals 4

    .line 191
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyd;->zza()Lcom/google/firebase/auth/EmailAuthCredential;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    .line 195
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyd;->zza()Lcom/google/firebase/auth/EmailAuthCredential;

    move-result-object v1

    .line 196
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyd;->zzb()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza:Lcom/google/android/gms/common/logging/Logger;

    invoke-direct {v2, p2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabz;Lcom/google/android/gms/common/logging/Logger;)V

    .line 197
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zza(Lcom/google/firebase/auth/EmailAuthCredential;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V

    .line 198
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzye;Lcom/google/android/gms/internal/firebase-auth-api/zzabz;)V
    .locals 3

    .line 168
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    .line 171
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzye;->zza()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza:Lcom/google/android/gms/common/logging/Logger;

    invoke-direct {v1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabz;Lcom/google/android/gms/common/logging/Logger;)V

    .line 172
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zzd(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V

    .line 173
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzyf;Lcom/google/android/gms/internal/firebase-auth-api/zzabz;)V
    .locals 15

    .line 223
    move-object v0, p0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    nop

    .line 226
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyf;->zzb()Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/auth/PhoneMultiFactorInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 227
    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza:Lcom/google/android/gms/common/logging/Logger;

    move-object/from16 v3, p2

    invoke-direct {v8, v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabz;Lcom/google/android/gms/common/logging/Logger;)V

    .line 228
    iget-object v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzadt;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zzd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 229
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyf;->zzg()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 230
    iget-object v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzadt;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zzc(Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzadt;

    invoke-virtual {v2, v8, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzacc;Ljava/lang/String;)V

    .line 232
    return-void

    .line 233
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyf;->zza()J

    move-result-wide v5

    .line 234
    nop

    .line 235
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyf;->zzh()Z

    move-result v7

    .line 236
    nop

    .line 237
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyf;->zzd()Ljava/lang/String;

    move-result-object v9

    .line 238
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyf;->zzb()Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/auth/MultiFactorInfo;->getUid()Ljava/lang/String;

    move-result-object v10

    .line 239
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyf;->zzb()Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/auth/PhoneMultiFactorInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v11

    .line 240
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyf;->zzc()Ljava/lang/String;

    move-result-object v12

    .line 241
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyf;->zzf()Ljava/lang/String;

    move-result-object v13

    .line 242
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyf;->zze()Ljava/lang/String;

    move-result-object v14

    .line 243
    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzafy;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzafy;

    move-result-object v9

    .line 244
    invoke-static {v5, v6, v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza(JZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 245
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzaed;

    iget-object v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzadt;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zzb()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaed;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzafy;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaed;)V

    .line 246
    :cond_2
    iget-object v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzadt;

    move-object v3, v1

    move-object v4, v8

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;JZ)V

    .line 247
    iget-object v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    iget-object v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzadt;

    .line 248
    invoke-virtual {v3, v8, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzacc;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    move-result-object v1

    .line 249
    invoke-virtual {v2, v9, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafy;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V

    .line 250
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzyg;Lcom/google/android/gms/internal/firebase-auth-api/zzabz;)V
    .locals 3

    .line 199
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyg;->zza()Lcom/google/firebase/auth/PhoneAuthCredential;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/PhoneAuthCredential;

    .line 202
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    .line 203
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadn;->zza(Lcom/google/firebase/auth/PhoneAuthCredential;)Lcom/google/android/gms/internal/firebase-auth-api/zzago;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza:Lcom/google/android/gms/common/logging/Logger;

    invoke-direct {v1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabz;Lcom/google/android/gms/common/logging/Logger;)V

    .line 204
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzago;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V

    .line 205
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzyi;Lcom/google/android/gms/internal/firebase-auth-api/zzabz;)V
    .locals 3

    .line 274
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    nop

    .line 276
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyi;->zza()Lcom/google/firebase/auth/ActionCodeSettings;

    move-result-object v0

    .line 277
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyi;->zzb()Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyi;->zzc()Ljava/lang/String;

    move-result-object p1

    .line 279
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaez;->zza(Lcom/google/firebase/auth/ActionCodeSettings;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzaez;

    move-result-object p1

    .line 280
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza:Lcom/google/android/gms/common/logging/Logger;

    invoke-direct {v1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabz;Lcom/google/android/gms/common/logging/Logger;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaez;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V

    .line 281
    return-void
.end method

.method public final zza(Lcom/google/firebase/auth/MultiFactorAssertion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzabz;)V
    .locals 1

    .line 47
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v0, "cachedTokenState should not be empty."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    invoke-static {p5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    instance-of v0, p1, Lcom/google/firebase/auth/PhoneMultiFactorAssertion;

    if-eqz v0, :cond_0

    .line 51
    check-cast p1, Lcom/google/firebase/auth/PhoneMultiFactorAssertion;

    .line 52
    invoke-virtual {p1}, Lcom/google/firebase/auth/PhoneMultiFactorAssertion;->zza()Lcom/google/firebase/auth/PhoneAuthCredential;

    move-result-object p1

    .line 53
    nop

    .line 54
    invoke-virtual {p1}, Lcom/google/firebase/auth/PhoneAuthCredential;->zzc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lcom/google/firebase/auth/PhoneAuthCredential;->getSmsCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 56
    invoke-static {p2, v0, p1, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaep;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzaep;

    move-result-object p1

    .line 57
    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/google/firebase/auth/TotpMultiFactorAssertion;

    if-eqz v0, :cond_1

    .line 58
    check-cast p1, Lcom/google/firebase/auth/TotpMultiFactorAssertion;

    .line 59
    invoke-virtual {p1}, Lcom/google/firebase/auth/TotpMultiFactorAssertion;->zza()Lcom/google/firebase/auth/TotpSecret;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/TotpSecret;

    .line 60
    nop

    .line 61
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 62
    invoke-interface {v0}, Lcom/google/firebase/auth/TotpSecret;->getSessionInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-virtual {p1}, Lcom/google/firebase/auth/TotpMultiFactorAssertion;->zzc()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-static {p2, p3, v0, p1, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaer;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzaer;

    move-result-object p1

    .line 65
    nop

    .line 67
    :goto_0
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    new-instance p4, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza:Lcom/google/android/gms/common/logging/Logger;

    invoke-direct {p4, p5, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabz;Lcom/google/android/gms/common/logging/Logger;)V

    invoke-virtual {p3, p1, p2, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzael;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V

    .line 68
    return-void

    .line 66
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "multiFactorAssertion must be either PhoneMultiFactorAssertion or TotpMultiFactorAssertion."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzabz;)V
    .locals 3

    .line 43
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza:Lcom/google/android/gms/common/logging/Logger;

    invoke-direct {v1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabz;Lcom/google/android/gms/common/logging/Logger;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V

    .line 46
    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzagj;Lcom/google/android/gms/internal/firebase-auth-api/zzabz;)V
    .locals 3

    .line 112
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza:Lcom/google/android/gms/common/logging/Logger;

    invoke-direct {v1, p3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabz;Lcom/google/android/gms/common/logging/Logger;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzagj;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V

    .line 116
    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/firebase/auth/MultiFactorAssertion;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzabz;)V
    .locals 2

    .line 69
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    instance-of v0, p2, Lcom/google/firebase/auth/PhoneMultiFactorAssertion;

    if-eqz v0, :cond_0

    .line 73
    check-cast p2, Lcom/google/firebase/auth/PhoneMultiFactorAssertion;

    .line 74
    invoke-virtual {p2}, Lcom/google/firebase/auth/PhoneMultiFactorAssertion;->zza()Lcom/google/firebase/auth/PhoneAuthCredential;

    move-result-object p2

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    .line 76
    invoke-virtual {p2}, Lcom/google/firebase/auth/PhoneAuthCredential;->zzc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 77
    invoke-virtual {p2}, Lcom/google/firebase/auth/PhoneAuthCredential;->getSmsCode()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 78
    invoke-static {p1, v1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaeo;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzaeo;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    sget-object p3, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza:Lcom/google/android/gms/common/logging/Logger;

    invoke-direct {p2, p4, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabz;Lcom/google/android/gms/common/logging/Logger;)V

    .line 79
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaen;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V

    .line 80
    return-void

    :cond_0
    instance-of v0, p2, Lcom/google/firebase/auth/TotpMultiFactorAssertion;

    if-eqz v0, :cond_1

    .line 81
    check-cast p2, Lcom/google/firebase/auth/TotpMultiFactorAssertion;

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    .line 83
    invoke-virtual {p2}, Lcom/google/firebase/auth/TotpMultiFactorAssertion;->zzc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-virtual {p2}, Lcom/google/firebase/auth/TotpMultiFactorAssertion;->zzb()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 85
    invoke-static {p1, v1, p3, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaeq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzaeq;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    sget-object p3, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza:Lcom/google/android/gms/common/logging/Logger;

    invoke-direct {p2, p4, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabz;Lcom/google/android/gms/common/logging/Logger;)V

    .line 86
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaen;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V

    .line 87
    return-void

    .line 88
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "multiFactorAssertion must be either PhoneMultiFactorAssertion or TotpMultiFactorAssertion."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Ljava/lang/String;Lcom/google/firebase/auth/UserProfileChangeRequest;Lcom/google/android/gms/internal/firebase-auth-api/zzabz;)V
    .locals 3

    .line 269
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 270
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza:Lcom/google/android/gms/common/logging/Logger;

    invoke-direct {v1, p3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabz;Lcom/google/android/gms/common/logging/Logger;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zza(Ljava/lang/String;Lcom/google/firebase/auth/UserProfileChangeRequest;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V

    .line 273
    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzabz;)V
    .locals 3

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza:Lcom/google/android/gms/common/logging/Logger;

    invoke-direct {v1, p3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabz;Lcom/google/android/gms/common/logging/Logger;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V

    .line 13
    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/firebase-auth-api/zzabz;)V
    .locals 10

    .line 206
    move-object v0, p0

    move-object v7, p2

    const-string v1, "idToken should not be empty."

    move-object v2, p1

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 207
    invoke-static/range {p11 .. p11}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza:Lcom/google/android/gms/common/logging/Logger;

    move-object/from16 v3, p11

    invoke-direct {v8, v3, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabz;Lcom/google/android/gms/common/logging/Logger;)V

    .line 209
    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzadt;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zzd(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    if-eqz p6, :cond_0

    .line 211
    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzadt;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zzc(Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzadt;

    invoke-virtual {v1, v8, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzacc;Ljava/lang/String;)V

    .line 213
    return-void

    .line 214
    :cond_1
    :goto_0
    const/4 v6, 0x0

    .line 215
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaga;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzaga;

    move-result-object v9

    .line 216
    move-wide v4, p4

    move/from16 v6, p10

    invoke-static {p4, p5, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza(JZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 217
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzaed;

    iget-object v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzadt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaed;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaga;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaed;)V

    .line 218
    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzadt;

    move-object v2, p2

    move-object v3, v8

    move-wide v4, p4

    move/from16 v6, p10

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;JZ)V

    .line 219
    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    iget-object v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzadt;

    .line 220
    invoke-virtual {v2, v8, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzacc;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    move-result-object v2

    .line 221
    invoke-virtual {v1, v9, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafw;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V

    .line 222
    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzabz;)V
    .locals 3

    .line 106
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza:Lcom/google/android/gms/common/logging/Logger;

    invoke-direct {v1, p4, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabz;Lcom/google/android/gms/common/logging/Logger;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V

    .line 111
    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzabz;)V
    .locals 6

    .line 38
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    invoke-static {p5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    new-instance v5, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza:Lcom/google/android/gms/common/logging/Logger;

    invoke-direct {v5, p5, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabz;Lcom/google/android/gms/common/logging/Logger;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V

    .line 42
    return-void
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzabz;)V
    .locals 3

    .line 89
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza:Lcom/google/android/gms/common/logging/Logger;

    invoke-direct {v1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabz;Lcom/google/android/gms/common/logging/Logger;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V

    .line 92
    return-void
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzabz;)V
    .locals 3

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza:Lcom/google/android/gms/common/logging/Logger;

    invoke-direct {v1, p3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabz;Lcom/google/android/gms/common/logging/Logger;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zzb(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V

    .line 18
    return-void
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzabz;)V
    .locals 3

    .line 255
    const-string v0, "cachedTokenState should not be empty."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 256
    const-string v0, "uid should not be empty."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 257
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza:Lcom/google/android/gms/common/logging/Logger;

    invoke-direct {v1, p4, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabz;Lcom/google/android/gms/common/logging/Logger;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V

    .line 259
    return-void
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzabz;)V
    .locals 6

    .line 185
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    invoke-static {p5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-static {p5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    new-instance v5, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza:Lcom/google/android/gms/common/logging/Logger;

    invoke-direct {v5, p5, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabz;Lcom/google/android/gms/common/logging/Logger;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V

    .line 190
    return-void
.end method

.method public final zzc(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzabz;)V
    .locals 3

    .line 126
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza:Lcom/google/android/gms/common/logging/Logger;

    invoke-direct {v1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabz;Lcom/google/android/gms/common/logging/Logger;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V

    .line 129
    return-void
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzabz;)V
    .locals 3

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza:Lcom/google/android/gms/common/logging/Logger;

    invoke-direct {v1, p3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabz;Lcom/google/android/gms/common/logging/Logger;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zzc(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V

    .line 23
    return-void
.end method

.method public final zzd(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzabz;)V
    .locals 3

    .line 174
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza:Lcom/google/android/gms/common/logging/Logger;

    invoke-direct {v1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabz;Lcom/google/android/gms/common/logging/Logger;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zze(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V

    .line 176
    return-void
.end method

.method public final zzd(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzabz;)V
    .locals 3

    .line 24
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza:Lcom/google/android/gms/common/logging/Logger;

    invoke-direct {v1, p3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabz;Lcom/google/android/gms/common/logging/Logger;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zzd(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V

    .line 27
    return-void
.end method

.method public final zze(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzabz;)V
    .locals 3

    .line 260
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 261
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza:Lcom/google/android/gms/common/logging/Logger;

    invoke-direct {v1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabz;Lcom/google/android/gms/common/logging/Logger;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zzf(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V

    .line 263
    return-void
.end method

.method public final zze(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzabz;)V
    .locals 3

    .line 97
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza:Lcom/google/android/gms/common/logging/Logger;

    invoke-direct {v1, p3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabz;Lcom/google/android/gms/common/logging/Logger;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zze(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V

    .line 99
    return-void
.end method

.method public final zzf(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzabz;)V
    .locals 3

    .line 264
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 265
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 266
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza:Lcom/google/android/gms/common/logging/Logger;

    invoke-direct {v1, p3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzabz;Lcom/google/android/gms/common/logging/Logger;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zzf(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V

    .line 268
    return-void
.end method
