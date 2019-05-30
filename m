Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46BE92EAD6
	for <lists+linux-mediatek@lfdr.de>; Thu, 30 May 2019 04:55:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yxHAdSAajn1ws75psR+i49FP4A/uzXrE4DpEHysY3BM=; b=MpukicaGtY4keP
	Ucrw3EMCTxrL7OCOpI4f2NRGEodOrZyuJfVGddfu61CK30FjCepDwtWvmRIUsShaPS9rgot30ruKP
	hDeScoZo2vtx5UsbETfr37SUhLZ50dxJXWZ8rd2cX88nWbQ/NhOReQb0LVPoLuAnfd8SqNCyGsZrI
	xSOTMl+U4eBrRF03/ngiZTpUal/pxUJJiagauC+DJHVuBvIIpPsOb2JovyQfjCIk//W8ON0NL6eeL
	qWIP8t4u8vPLLjasrMmGi5h8OwW70NU1YyEMHmyubh0aYCLlu7YvxKhHAHasPESTQLO0bwJEkE2Ds
	YROdSRiIL9mj/BXkrAgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWBEF-0001Il-PQ; Thu, 30 May 2019 02:55:43 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWBEC-0001Hp-BW
 for linux-mediatek@lists.infradead.org; Thu, 30 May 2019 02:55:41 +0000
Received: by mail-qk1-x743.google.com with SMTP id g18so2946316qkl.3
 for <linux-mediatek@lists.infradead.org>; Wed, 29 May 2019 19:55:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hXC4kHzYwJGnl8YXVUWx0puoDDwpLZgED1hwjltNjg4=;
 b=K6yWGboPMYwUdNCjC32JmzZHDaPsR9bN4M9bMJOWj6QNjlo3n58nUVIKLrzji8AhDW
 7QezzgWoWhv/YRJ2k7nX4f7ltYiLhEMyhrCUrbTEXlKVqJC0bvB2UyywYyuaFizo68zv
 ugWTtb5QNrzFd7wJvqKR8eeF8DfRbkXiaWjn4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hXC4kHzYwJGnl8YXVUWx0puoDDwpLZgED1hwjltNjg4=;
 b=cABfOymrvIjZCbp2r0iVvimUWzDlJRpaGAhCjbAiAoYcot24fsu5bAMFEIFMFzBgZw
 N4538JaZLhI33BCqpqfaqvLV1viotT7L6/MCqafHupgS8YJErQtSaOpE3a0mCEH8svHk
 UjOpJb35WlQV8IQPawy45qSMEJ/c1jPsVl7LLEzRgPJPJHc1i6pFkd0AdRIslZ3Sqtrf
 rfEQBSxYvw2plubIMhDGrLPa0Q8VfrVuIma8hTd4UH7bazHwg4/Zm9toKmIYgjx0KO9Y
 IpfXOZXJGCMYKvdUEI0ApRlIx19gPduJ1mulZ7LyTJbMPLCfoQ7qAvE1QuZl8nkSMCzQ
 K7lQ==
X-Gm-Message-State: APjAAAXBqNKUMqbxsHUmQ+taF68JFkEJ07ZI63JFIlk/eU3N/aJI+Y+b
 3Kp6GgT2bKvG9wWDEmNBMLfKwiJNc4Qx8BTou6N0zg==
X-Google-Smtp-Source: APXvYqwbvVCUHkyZ1UVrW3CoWKtkXaSs4V4XiLDBo7b0pM95AINVAYXNQOY+l2q5rzTV9S+lLKzvEUHvy1askLPhD+c=
X-Received: by 2002:a05:620a:1425:: with SMTP id
 k5mr1062627qkj.146.1559184938564; 
 Wed, 29 May 2019 19:55:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190528073908.633-1-hsinyi@chromium.org>
 <1559033586.5141.3.camel@mtksdaap41>
In-Reply-To: <1559033586.5141.3.camel@mtksdaap41>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Thu, 30 May 2019 10:55:12 +0800
Message-ID: <CAJMQK-ir9J-JN9DDZPBA1nVkJUZ_6A+fY4fA6jx6zOh_9q5a-w@mail.gmail.com>
Subject: Re: [PATCH v3] gpu/drm: mediatek: call mtk_dsi_stop() after
 mtk_drm_crtc_atomic_disable()
To: CK Hu <ck.hu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_195540_420886_D09ADFF9 
X-CRM114-Status: UNSURE (   7.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 lkml <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 4:53 PM CK Hu <ck.hu@mediatek.com> wrote:

> I think we've already discussed in [1]. I need a reason to understand
> this is hardware behavior or software bug. If this is a software bug, we
> need to fix the bug and code could be symmetric.
>
> [1]
> http://lists.infradead.org/pipermail/linux-mediatek/2019-March/018423.html
>
Hi CK,

Jitao has replied in v2[1]
"
mtk_dsi_start must after dsi full setting.
If you put it in mtk_dsi_ddp_start, mtk_dsi_set_mode won't work. DSI
will keep cmd mode. So you see no irq.
...
"

[1] https://lore.kernel.org/patchwork/patch/1052505/#1276270

Thanks

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
