Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0843C98398
	for <lists+linux-mediatek@lfdr.de>; Wed, 21 Aug 2019 20:50:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WIoRxUiw6noEcmXFa1SH4opjDgHOF5LqJXmS2OF6sOI=; b=hw/3fRhKOF2+2A
	E2SVCuggeFnRgcQCeLWpd4/cW/qgQvmfxRaZDYCuKn98HLKp38DFN1hKZEIxI9A98IDpYKC6gFBVE
	Id4JyVsKLfIfdh7jfbR9LQCmo/pTUU797liD1RJq2ebuNq1e3/IClBp69EzquwxraczFc3SXMn6mZ
	1PsxNhqaflMz9WfmA2AYjaN9/G1Wnmmnrs+um5hTbcjPbR30LF1/X4noUpsrWSTreCdXngIJ7xDgp
	lYo+1BfquIUp2exIfX6UaxAZFsk5Ef4Ui0iG5uzQ14Sc6LPnZrVIvW6u8pFr1ZFsnlqRCOtRxhdIg
	7+6jSkQ2qxdzdXgO5QFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Vgn-00011v-V0; Wed, 21 Aug 2019 18:50:34 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Vgi-00011C-CF
 for linux-mediatek@lists.infradead.org; Wed, 21 Aug 2019 18:50:29 +0000
Received: by mail-oi1-f196.google.com with SMTP id 16so2410766oiq.6
 for <linux-mediatek@lists.infradead.org>; Wed, 21 Aug 2019 11:50:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=75tYGq2XrByjJlPCQ5rRvEjYYw5HsWA3W1b4A6YisAI=;
 b=JRKVOS8AmvCcldCRmBaDWK55hL4iHWZ2st21BRUfjvKI4bj5XYtixdCUwV8XcKGOgG
 hB82owCeU7kpkc9Jy+KWdg8SqiajpPWCXyfHTOzOphbst7ZiTfP4/1ug5yx3Y63WKrcb
 0ZZM4GQgUGJqwIt4E6f1kq6sOgo2l1p5vF9TCShqVLqDoupINJF5vPLu453irlJYg+fd
 eRcNzq8B/5BSrK+pxpRvfKiG433UCxNFXFT7Nas8pA/qhcYVEx4lLbdh1ArH8KP6QqFu
 C2jcoT8TyZjLe13/ofbgjBS2z072w3OB+fj/0fGm7/+OYedObvA8WR2cViba/sqZaNuR
 2VdQ==
X-Gm-Message-State: APjAAAXwnpvrd/dYSyRI/prDMaur+fUmXNzdlkiskPivhrfNGuVCijQM
 6hgf+lFXemwDXvRiXGKyMQ==
X-Google-Smtp-Source: APXvYqysc72bbOfLeYkR0WFQ+GexfuCxG/CQGQ6YNhCh2IAPEbKVPiDCUf/3re0fLc39lGLwK4aaYg==
X-Received: by 2002:aca:b70b:: with SMTP id h11mr1136628oif.107.1566413426876; 
 Wed, 21 Aug 2019 11:50:26 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id d66sm7037232otb.47.2019.08.21.11.50.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 11:50:26 -0700 (PDT)
Date: Wed, 21 Aug 2019 13:50:25 -0500
From: Rob Herring <robh@kernel.org>
To: Mars Cheng <mars.cheng@mediatek.com>
Subject: Re: [PATCH 04/11] pinctrl: mediatek: update pinmux defintions for
 mt6779
Message-ID: <20190821185025.GA18525@bogus>
References: <1564996320-10897-1-git-send-email-mars.cheng@mediatek.com>
 <1564996320-10897-5-git-send-email-mars.cheng@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1564996320-10897-5-git-send-email-mars.cheng@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_115028_421767_C2744760 
X-CRM114-Status: UNSURE (   7.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, CC Hwang <cc.hwang@mediatek.com>,
 wsd_upstream@mediatek.com, Andy Teng <andy.teng@mediatek.com>,
 Loda Chou <loda.chou@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Wendell Lin <wendell.lin@mediatek.com>, Ivan Tseng <ivan.tseng@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, Aug 05, 2019 at 05:11:53PM +0800, Mars Cheng wrote:
> Add devicetree bindings for Mediatek mt6779 SoC Pin Controller.

checkpatch.pl reports typo in subject.

Otherwise,

Reviewed-by: Rob Herring <robh@kernel.org>

> 
> Signed-off-by: Mars Cheng <mars.cheng@mediatek.com>
> Signed-off-by: Andy Teng <andy.teng@mediatek.com>
> ---
>  include/dt-bindings/pinctrl/mt6779-pinfunc.h | 1242 ++++++++++++++++++++++++++
>  1 file changed, 1242 insertions(+)
>  create mode 100644 include/dt-bindings/pinctrl/mt6779-pinfunc.h

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
