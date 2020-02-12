Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED2615A7F1
	for <lists+linux-mediatek@lfdr.de>; Wed, 12 Feb 2020 12:32:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/IkbI551ihEluHq+rJixNKIRliFeXImBV2bvQnUPQqM=; b=V6CM4b+SneYbBG
	LxNdVkk9p9bdXgITDlPsDFW+DUfrBmcoZvoCpV6No7Fn6cCtwgQS/QduK6FBraOumr1upEnHKtXTM
	5cf4Fu9WO2eoIzGQIqf6YDgLFTh70vVrl4VauBqVKuwsN0n295YZRNrKd2kjg8buz1i9hoXOLRXpv
	Tjo6mzO2Q5fR/OcbY4Irgetl4rEiZJ/OYZoumITXBbclwm+Vnc6TteZLPjks2/U64TsrbcOyigGat
	SKQrLta+LcnMcWBpCaXt+mwQcaRgUJ15yAW3/jXpUcZlqC5y6b4Zhlf80kD5JlOMKBkbxHd6JbwEv
	KAhk9tv4WgteubSePtOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1qFk-0005Nt-4X; Wed, 12 Feb 2020 11:32:24 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1qFV-0005ET-5T
 for linux-mediatek@lists.infradead.org; Wed, 12 Feb 2020 11:32:10 +0000
Received: by mail-il1-x142.google.com with SMTP id l4so1454372ilj.1
 for <linux-mediatek@lists.infradead.org>; Wed, 12 Feb 2020 03:32:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Jhq+F5Vg5gXGVxGGwDzRsCFJAnXHio4Ba0xV8d1yBL0=;
 b=srnvxZf32dbXBAR2MEM61jw+61/pI7td4FK9ZdgDyMp0QtdHGlPNBy/srI2I18KHEy
 EMEQ9341OZ3cRoKeX8R32S5GkitAS+q7fMCGKLg37SuVwmaX8hHlYBR38lWBImfZjPYS
 T4SDTQY51JhRumhmP40nk7NvcMU463kJjwo57HiZp5F53TT0GxursZcOjkLsM99FxN43
 8QccU2bziUos6H+hlNHAtrPprHf98VrqOrG44HDQhpO56gokfkyKANs5YprJN64nnZ3F
 hf1b71J2CNUbl1S5SCYw1LjTU7BhjpZsfTSzuCNKu0TBvtAx4nMIQYIFYpGW/sy5Xx+Y
 J78w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Jhq+F5Vg5gXGVxGGwDzRsCFJAnXHio4Ba0xV8d1yBL0=;
 b=JX5IycX0r14M60DNxvuEAf1Scgjr5jfS1MzRUoNHsOZxzZ7IdbBzOHFxCnQVCUS665
 VAjeBYRpkXCPHE2c6oidMC+xdD7UdKOm5IHjdJ4dQ9lJztQvhlFSc+4Ytjt6ZeofBfuN
 xIVr6wOQ6yGs9pcb9GHIvXVSYa0+LvELpbOBidY+TzphyMqcDyehXzA0SyVY3NBcK3zW
 q8bYJBlE+X+5ZGVbSQd3+iR8B1Rzl1Yv9chVUqmcaUldNG8VVskucLAQYgXeawbaDxKG
 xZoOX4KAOP2bMA9/3d82ocsfmbwT9jWXl92nI3P/uNz6uOR7iYp/jjCInveD0hPkVq1o
 iEaw==
X-Gm-Message-State: APjAAAUhn6gWREBa3eK0wdJS3B5/CaXVW2vwpmZxn9Cp/XiN1+PhFqam
 6n41/RWWoaFSB/ZuhqbQsjqhhJ2rmdg13BO88D0HTg==
X-Google-Smtp-Source: APXvYqyCysF+Xty0Kw6QgHoXI6zCDRRSPRDXxL0EER6sqVcOTJNMCRiWOwxITCc6kPH9uv3UKjyIma87orV8iEBRlE4=
X-Received: by 2002:a92:981b:: with SMTP id l27mr10824698ili.118.1581507125520; 
 Wed, 12 Feb 2020 03:32:05 -0800 (PST)
MIME-Version: 1.0
References: <20200206031752.193298-1-tzungbi@google.com>
 <20200206102509.2.I230fd59de28e73934a91cb01424e25b9e84727f4@changeid>
 <1581495554.22603.2.camel@mtksdaap41>
In-Reply-To: <1581495554.22603.2.camel@mtksdaap41>
From: Tzung-Bi Shih <tzungbi@google.com>
Date: Wed, 12 Feb 2020 19:31:54 +0800
Message-ID: <CA+Px+wXjC1rchzUGhYYCJVyEbm7RQNFnqf-sQNaky6d82DyLyw@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] drm/mediatek: support HDMI jack status reporting
To: CK Hu <ck.hu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_033209_225350_EF1FBC90 
X-CRM114-Status: UNSURE (   7.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
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
 Jimmy Cheng-Yi Chiang <cychiang@google.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Mark Brown <broonie@kernel.org>,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>, p.zabel@pengutronix.de,
 Dylan Reid <dgreid@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 4:19 PM CK Hu <ck.hu@mediatek.com> wrote:
> I think hdmi_conn_detect() and mtk_hdmi_audio_hook_plugged_cb() would be
> called in different thread. So it's necessary to use a mutex to protect
> this.

Thanks for the reminder.  I feel using mutex here is overkill.  Please
see https://patchwork.kernel.org/patch/11378413/ for my proposed
solution.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
