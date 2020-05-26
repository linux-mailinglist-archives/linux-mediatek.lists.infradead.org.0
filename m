Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D38D1E2988
	for <lists+linux-mediatek@lfdr.de>; Tue, 26 May 2020 20:03:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VtXM0bAtXT7+KaaTlZqaPsITiiPEUkXf95f1AS7s3IE=; b=iGn0xNf7hKdy85
	z5bDqfYBF4YQ/UuHK7qS68B6aw7E0Lo2kREBaFZG4/MGUPLzk/5ADxwH8rXTVgkJF8IsTHGm7fzKI
	azs4w5Arb37rrZRB+3oMx9M+dq/WwEIwURw617Tiyp5jRyghK1SgJ8u29TjT6o2sVaUYjJ6h80d0z
	rW1BQHVy77c7bJq1zSlOjWPaaALjtCKzj6wEwUjNWClPJa5w6Y5IJaLsYrKESYGv3Ud7sBNm/90LF
	0yFSirPfYx6BzzuwsvzfXPo1o52fK0zHBSfvPGFF5hoquG7w3oyYKe+dyBpI8ZwMuDHKFX59iz2HZ
	wSBrtvl2/T7zcMfNyheg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jddud-0001c7-9d; Tue, 26 May 2020 18:02:51 +0000
Received: from mail-il1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jddua-0001bJ-Sc; Tue, 26 May 2020 18:02:50 +0000
Received: by mail-il1-f194.google.com with SMTP id q18so283348ilm.5;
 Tue, 26 May 2020 11:02:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=YebaOmD7Ju0D8dp8+Jh6rQ27XVMpKBTe+xY/yyi+R5c=;
 b=NNA7vXlIxRNPOK/CkGKLWYvzhWEXMn5KyFTPbk3rnc2cxKEeixOp5U8r1Hz3ZJEsyC
 56xq/W7KwQEYSInvwZfzWmL7LutqXWuXuJM325lStnq3r6dzaU5vG1vH+tMWolTOHWTD
 iVyVHBE+6dD7Pc8fFB9K1e18K79GJLDmmyY87OLD+QuytygGtp61ljnx8jkHBQ6/Z1Hb
 7u67+xf0fUSlE8lrp7hPvEy8ZGy2YLcbix1TvF+jnzp2UyJeFWrVMqs6EX2ovmoRMYzo
 lpyKC4DHuA5bJiUEJELa4NnyiU8ZJcqND8IkfOR0+WZbYTrNy4RzX4NOgS2bN7OamERw
 It3w==
X-Gm-Message-State: AOAM531OBciPIp4wBoiKNHrpNpkM5NB8UT+K26O/3mHBjE+XzUy+hk1G
 HCCbHe881vi4xFAlftwfcA==
X-Google-Smtp-Source: ABdhPJzHpsHTbs1kNcS5W7S2W7j2Tz56qjTVrOe7LVapF32Ul2j79RUmxJxaOWK3AAyJg24lmEWqow==
X-Received: by 2002:a92:ce8e:: with SMTP id r14mr2366787ilo.265.1590516164859; 
 Tue, 26 May 2020 11:02:44 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id j90sm339624ilg.70.2020.05.26.11.02.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 11:02:44 -0700 (PDT)
Received: (nullmailer pid 76101 invoked by uid 1000);
 Tue, 26 May 2020 18:02:43 -0000
Date: Tue, 26 May 2020 12:02:43 -0600
From: Rob Herring <robh@kernel.org>
To: Weiyi Lu <weiyi.lu@mediatek.com>
Subject: Re: [PATCH v15 01/11] dt-bindings: mediatek: Add property to mt8183
 smi-common
Message-ID: <20200526180243.GA75958@bogus>
References: <1590051985-29149-1-git-send-email-weiyi.lu@mediatek.com>
 <1590051985-29149-2-git-send-email-weiyi.lu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1590051985-29149-2-git-send-email-weiyi.lu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_110248_920940_F25CE81E 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, Nicolas Boichat <drinkcat@chromium.org>,
 srv_heupstream@mediatek.com, James Liao <jamesjj.liao@mediatek.com>,
 Enric Balletbo Serra <eballetbo@gmail.com>, linux-kernel@vger.kernel.org,
 Fan Chen <fan.chen@mediatek.com>, linux-mediatek@lists.infradead.org,
 Sascha Hauer <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, 21 May 2020 17:06:14 +0800, Weiyi Lu wrote:
> For scpsys driver using regmap based syscon driver API.
> 
> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> ---
>  .../devicetree/bindings/memory-controllers/mediatek,smi-common.txt      | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
