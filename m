Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D9815BA77
	for <lists+linux-mediatek@lfdr.de>; Thu, 13 Feb 2020 09:05:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LUSP96SbWFLb3xjIhS/ME9nuU1HGCpofL9G+O5KkFrU=; b=buQ1ObVYJ2hjC6
	GaattxTYT2T/ELIydEozLyab4DX4c8opkz9DGZSNho62dyZd1NNXy+31XH4gD5/Fo30amPoRvr0wj
	IFGLXAicc3g4P+U/j0GYXf9i6javB9RZkzqKpnI38CYRnqmyNypyiX5VmGQPc/7gPH/MNEGRq0BmS
	4yyXUJppEW3BIQDa4Qz4fOmPjNJotD0wt1rlZODMAEJm5UBU0TBzoaTFCGRJrqGSjT3+qN0UxA6aK
	4mBLnRG28UoblA5JsI5ZRJ5SNKqVSF63drsvgmOwDKn91J9Pq0/zgYapR1jQNbsY/NmtyaeBPsvvO
	IUBKY4Z7bazsVstx02cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j29UZ-0003DG-Gu; Thu, 13 Feb 2020 08:04:59 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j29UI-0002vS-HO
 for linux-mediatek@lists.infradead.org; Thu, 13 Feb 2020 08:04:44 +0000
Received: by mail-io1-xd42.google.com with SMTP id d15so5471721iog.3
 for <linux-mediatek@lists.infradead.org>; Thu, 13 Feb 2020 00:04:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sc3keblL800YvOavDBCb855qDz/NufloEJ5TcEwfY7k=;
 b=smkU19UKPG07Wu5DsBkdgAAwKhnW0ebOa1khT8jd7fCuMNJjwP+Saxa3Jobis/+muN
 ZkmXGbw9ZnB/3LDbSUs4/xtbo60UJOYOHZ5xsS5isrkMbaFnYMuFwcAN729yoACIz+3v
 FYDd2d/Oe8JmmpRlGAklaTD/JJ95QCnvjlqw1evmT8HliD72qW1NxqIZ7PkjhgncaiwZ
 YLLIbV7zROOaEhz8NUpya9wKbr8QUC63vSN11nHyAcl1mhrgTeH2uAUyVeqhV+pTFw5o
 ZTvBIMozhpOdC2mI/nBqSkb2DVbsKCjtsTdEeQbanSTBgZmqS+EQur03LuOGo3gdDha0
 pgaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sc3keblL800YvOavDBCb855qDz/NufloEJ5TcEwfY7k=;
 b=gWZWEtkSNV+PGTWYm2MxgbHlcyUVAu4zFoQblygShy2hLQPR5nKXj6EW5PBdI9OTk3
 adaA1fEOW9yMUtHedpDVoyZuUqSJbJCeG0N3aq1SkZ7+SE+1aBZOWEIAGfZ2jWj3+t4d
 U1/SpJzkhIFDdNM2oqUCll9vcoxqNi6Q9QbtmcZIMg4m+0L/nrR9eD+Mcq2M53yR/CHH
 RihzFInoiV7o4GIHbqWZHQ+Cuy8BPkkyEor4e3AOptoRA9xV0H/McfsYZ//imuZsCLym
 NjyOVqwOMmqPPE+iwJGIbYPKMHj2ET6CDo5oNOKTJDIzKMOswHZENt4CzGsbo0Z1U0fp
 0Jew==
X-Gm-Message-State: APjAAAVJhXIzvgW2vb4aMWvWzy3DvQ9vmIRfczXOr9eWgnI2ixOsip8Q
 EXZAiJsrrdz/HehuiDjszhdcKPzceIn9pxcdTNO1Dw==
X-Google-Smtp-Source: APXvYqz80zbBUl4azLIlTYZJqui4gbd2SKx6LXrZUjj87iiR7EZYRgG1ei+0n/JP2A0qiVFK0NgJVqH3yG53c8hyEJs=
X-Received: by 2002:a6b:c703:: with SMTP id x3mr21246766iof.118.1581581081318; 
 Thu, 13 Feb 2020 00:04:41 -0800 (PST)
MIME-Version: 1.0
References: <20200212192707.PATCH.I477092c2f104fd589133436c3ae4590e6fc6323b@changeid>
In-Reply-To: <20200212192707.PATCH.I477092c2f104fd589133436c3ae4590e6fc6323b@changeid>
From: Tzung-Bi Shih <tzungbi@google.com>
Date: Thu, 13 Feb 2020 16:04:30 +0800
Message-ID: <CA+Px+wW6G274xtGhjmBc-QMqBahe0rtNVGt1Tc4bC6SH9VGiqg@mail.gmail.com>
Subject: Re: [PATCH] drm/mediatek: fix race condition of plugged_cb and
 codec_dev
To: Mark Brown <broonie@kernel.org>, David Airlie <airlied@linux.ie>, 
 Daniel Vetter <daniel@ffwll.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_000442_611019_55A3AAD2 
X-CRM114-Status: UNSURE (   6.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: ALSA development <alsa-devel@alsa-project.org>,
 Jimmy Cheng-Yi Chiang <cychiang@google.com>, dri-devel@lists.freedesktop.org,
 CK Hu <ck.hu@mediatek.com>, linux-mediatek@lists.infradead.org,
 p.zabel@pengutronix.de, Matthias Brugger <matthias.bgg@gmail.com>,
 Dylan Reid <dgreid@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 7:29 PM Tzung-Bi Shih <tzungbi@google.com> wrote:
>
> hdmi_conn_detect and mtk_hdmi_audio_hook_plugged_cb woule be called
> by different threads.  plugged_cb and codec_dev are in danger of race
> condition.

Please ignore the patch.  The successive attempt:
https://patchwork.kernel.org/patch/11379979/

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
