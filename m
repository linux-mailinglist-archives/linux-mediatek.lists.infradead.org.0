Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC782D8046
	for <lists+linux-mediatek@lfdr.de>; Tue, 15 Oct 2019 21:28:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jS5aD0t2ICaBXvindpu0vpxCvSyC2YDywQ3AhliJEPY=; b=p0TD+hi7EVp+Br
	4s2e8oKiyoB5QQNJRqM8gWGoY8XnNwGN1cYK6AkSnDNa83NwJoS2iRZSuIGPKpPHEWLJfdiWcsok3
	BtBKuIG5bz7122RwZuZzlJiQnMEMGsYqwgAhjjVFd3LdMtlQyJxdAjjjiOs4HEYXWFu8o/Y5BuaB8
	Rt1d2tK+NrnG0gob8QOjMr3fuLpBx7tBDJ46pFcc2nWlu5pDcFcGjhEqmT9EphTwmv8l3Vfx0lr8N
	AO5QODBDfrQweyYGex5KTbOrJexJkdgl3fODvV3WcA1z1GQ1VPY57evYGR68paDQwix7geamy1j4F
	N7npaSHwTzqvTOB8DXsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKSUz-0006l6-8E; Tue, 15 Oct 2019 19:28:49 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKSUv-0006kI-U1
 for linux-mediatek@lists.infradead.org; Tue, 15 Oct 2019 19:28:47 +0000
Received: by mail-wm1-x344.google.com with SMTP id p7so277990wmp.4
 for <linux-mediatek@lists.infradead.org>; Tue, 15 Oct 2019 12:28:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=EbAnyTOslp6v1Q8FsmUFH6BpJr8FNaYvIMIlQEjnqCI=;
 b=G90I0dyrX3/1JAVSlVemOrG13hF203/pZ3Lk38+XtGFF4rkUlZ/iPoV1/27W04fCiN
 rLpCP/3Dz4tB/k9Gq51AKs4+FJ1LW3x+x/bQdVmWSl036tb3ZB/sSuRMc0A3vXrj25ZN
 i7dh49TtP7P6EGenJ5aLCCZT9aHDh8pSWd5g04fxKv3T+uQL22Cn0LUD4jDYyOAnZllD
 1kjxE3kIPbGN3ZQR9vPIA6GQAbuZE/2M2uwOgW7IFirWuitnCb86tY9t2WShf+n+d/by
 vvR7SIag0PpihD6oqYflk2DE7u4BsxgixPGQTxK/LkrkBW4o7ur01/8OJwnqNhUXb1Py
 QjCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=EbAnyTOslp6v1Q8FsmUFH6BpJr8FNaYvIMIlQEjnqCI=;
 b=buEk8jvCumJR+5gwtPNfkZFFAzM36OUcO0bt8LqCn0rqRFw5MNMGLQRwkCbI6Pg4BR
 sqibpoiojgnTVtdeKHobiQpokI0a4jK3v9DDtE51s6tli0OgFRMRVi9Lo7oOWlZFTAHa
 npzbS9jUmXDwJsCrhQITGpD5hdno97vt45OT9mbG/Br5uQ5T2/60q2ZWOaXZgE/9Uzo2
 bOXYgXIonq3XHM+addDHIomq7k3IvlQUVpgp/YIKUvEMD258MHpbiS+jIZk1fkUTNxgs
 9UMXQcfLnGrnw4ow9XeZxrjUFffhXK95RfWNgwoJnDvfp1/5pYGC/lmg98ygsWbtdKm5
 6Svw==
X-Gm-Message-State: APjAAAW6YsK5VxvROEqT4JHF3aFyvUK+w6LxvB7hn33J4TFJOiDYdaCU
 vd/q8wxPBlEVWntjteor5tnzIq2e0aI=
X-Google-Smtp-Source: APXvYqz7nP0l7vdHzimkwgpLFEg+eNxzWXUfJJzNLYDn7AUPiBz5wwZf6tij4i9ykaeLXoR8PZtrxQ==
X-Received: by 2002:a05:600c:2318:: with SMTP id
 24mr60488wmo.146.1571167724173; 
 Tue, 15 Oct 2019 12:28:44 -0700 (PDT)
Received: from cakuba.netronome.com ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id i1sm342582wmb.19.2019.10.15.12.28.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 12:28:43 -0700 (PDT)
Date: Tue, 15 Oct 2019 12:28:36 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: MarkLee <Mark-MC.Lee@mediatek.com>
Subject: Re: [PATCH net,v3 1/2] net: ethernet: mediatek: Fix MT7629 missing
 GMII mode support
Message-ID: <20191015122836.78bff48f@cakuba.netronome.com>
In-Reply-To: <20191014071518.11923-2-Mark-MC.Lee@mediatek.com>
References: <20191014071518.11923-1-Mark-MC.Lee@mediatek.com>
 <20191014071518.11923-2-Mark-MC.Lee@mediatek.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_122845_972887_58B7682D 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Nelson Chang <nelson.chang@mediatek.com>, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 linux-kernel@vger.kernel.org, Rene van Dorst <opensource@vdorst.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, 14 Oct 2019 15:15:17 +0800, MarkLee wrote:
> In the original design, mtk_phy_connect function will set ge_mode=1
> if phy-mode is GMII(PHY_INTERFACE_MODE_GMII) and then set the correct
> ge_mode to ETHSYS_SYSCFG0 register. This logic was broken after apply  
> mediatek PHYLINK patch(Fixes tag), the new mtk_mac_config function will
> not set ge_mode=1 for GMII mode hence the final ETHSYS_SYSCFG0 setting 
> will be incorrect for mt7629 GMII mode. This patch add the missing logic
> back to fix it.
> 			 
> Fixes: b8fc9f30821e ("net: ethernet: mediatek: Add basic PHYLINK support")
> Signed-off-by: MarkLee <Mark-MC.Lee@mediatek.com>

LGTM, thanks

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
