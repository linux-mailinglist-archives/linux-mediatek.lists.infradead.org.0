Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2477BDE184
	for <lists+linux-mediatek@lfdr.de>; Mon, 21 Oct 2019 02:39:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4dRsF+C8Xhtn9hW+j41SL8apqt4bOtnvxipchxOh3dw=; b=cqU7RfjHEyEUJB
	ebWL5oWE5JW0BmCCE4h6ObHy8oMdCJqB0u8UP2iiDfhRtT6Fc1PgVDtrSfs73gvHbmT8IzlHSc9jo
	igfBl/iDtOGGkbIVkcirbLUiDAP8/czhjVRP9uLkSXaVdiecAo/dFiR05fvKRN51c8hHY9qPxqSec
	g71xvyXMcn8qK3L0dX8BRrUw6YIWwgVPeDqSo2p5eX/0cEIul2g5W+ETcVwUJoyscbLki/YceyLCA
	dI7W6V6ShGWRdVBsM3GyG847hmmKCeofEIwVaK8tVN+n9gVqCDzNMSwWSERFsfbd2hURH3wmDK5xw
	jvdNKsie8p7GT9oN/jDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMLjV-0001Ml-Gx; Mon, 21 Oct 2019 00:39:37 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMLjH-00017B-Dn
 for linux-mediatek@lists.infradead.org; Mon, 21 Oct 2019 00:39:25 +0000
Received: by mail-lj1-x243.google.com with SMTP id v24so11401505ljj.3
 for <linux-mediatek@lists.infradead.org>; Sun, 20 Oct 2019 17:39:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9FExjd8Mw+5S7YMEqY/A4+by9kWereoTqCBatm9VlSY=;
 b=bKfda/5lV6mWSWAiZpVxxNgMPBVwZY2DPWmhX6/nmnzg2UVxlImBP+/CfiJfb0DiYB
 w9AfDMSY2xb7TJKWzJ0+yMgQCi8J1xBfKrV90PGs/IEDPvEiqamNKpZqVWxgVnPWKGYm
 VN/CkYJn3XGCMykhmOivjJ0NuoUfJFVlSmhq7Xl76tAXV8UZroBJtxN4TpJwd1ySaSUC
 AaUBJg36OCzkyyf51aFEd1O4z9D+UjGo/4Y2R/zIT6yqBY2hyQ2lWAyh03UyWv4Mk6X2
 lSmCEqBEonc5NP58z1JO+HSpRadEiRVD11I6IW2n1nbWguPbe6WtLVRLwW/8m44zqXMN
 cG7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9FExjd8Mw+5S7YMEqY/A4+by9kWereoTqCBatm9VlSY=;
 b=ZwuLQG/n6UGtX/c5qaGT3cgov58HGxe5XXinUkdBoK4a40LypAGUyNGJZbCGyB1FOl
 49LF3bHpu52ZN7Pg5VMKxNjkzFZm7GvadbQ427jgxqosFcmiN0HrdoeR51Z6xj7ngFXH
 T1gANTUHYyGqARJBGp7Rho9FMNtVFdmqnPnKjJ07XCaFC0hhsiuN5U4k5eojYFH1YAsF
 LKvCciotie7XUadtdFSls+R2LX35rRL34mnq4/rzv/Np53jd46lteFX58Hmj4fTEVgKg
 MGEegHk1sRbnMHGcQu5iJMTpdBYjlWvOvAI7Mdp7we/loz3n4CUV42eKLtG4GRLuRcn+
 RtgA==
X-Gm-Message-State: APjAAAW8GzUSmreshuApsLhNdPtPqIJQy6oFg4CDUD3RVtU+zkVNowat
 4kcNvK/hCQMxOu/DbItCuzqZM7pFGUqJoP7gwkglbg==
X-Google-Smtp-Source: APXvYqzWOeDq45DqnffOCq2/ChHGoqMhScnvErLh5JbufOO4hYwyRCMdCCsjftBVaXnakQZF8XtaUFolXzMPZX14iKU=
X-Received: by 2002:a05:651c:1202:: with SMTP id
 i2mr6489156lja.218.1571618361501; 
 Sun, 20 Oct 2019 17:39:21 -0700 (PDT)
MIME-Version: 1.0
References: <20191016200647.32050-1-robh@kernel.org>
 <20191016200647.32050-17-robh@kernel.org>
In-Reply-To: <20191016200647.32050-17-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 21 Oct 2019 02:39:07 +0200
Message-ID: <CACRpkdYjY0JZCCfb9r9A2GKmO03hHXNCqGmy6qqBkLfOdZZdEQ@mail.gmail.com>
Subject: Re: [PATCH v2 16/25] PCI: versatile: Use
 pci_parse_request_of_pci_ranges()
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_173923_462083_B2D82003 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
 linux-pci <linux-pci@vger.kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Michal Simek <michal.simek@xilinx.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Ryder Lee <ryder.lee@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Scott Branden <sbranden@broadcom.com>, Jingoo Han <jingoohan1@gmail.com>,
 rfi@lists.rocketboards.org, Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Tom Joseph <tjoseph@cadence.com>, Simon Horman <horms@verge.net.au>,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Ley Foon Tan <lftan@altera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 10:07 PM Rob Herring <robh@kernel.org> wrote:

> Convert ARM Versatile host bridge to use the common
> pci_parse_request_of_pci_ranges().
>
> There's no need to assign the resources to a temporary list first. Just
> use bridge->windows directly and remove all the temporary list handling.
>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> v2:
> - Fix 'mem' initial value to 1
> - Remove temporary resource list

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
