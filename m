Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2090C1D5502
	for <lists+linux-mediatek@lfdr.de>; Fri, 15 May 2020 17:46:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cj0VtgYBTreEoa9jTjX0C4d1M+J1e1OWipLLWB5Sv6A=; b=UZHDtfooTqAOfM
	/8AjCbdiFC32OQd8Bs2dqzXlN4IjmW8UTVJDSas2FYZviY5ZnSWx9iv9rS6JptZNi/R8vJpipix3p
	RV4oW+QkavXGKmKCBQxVO/6UmYwBpF3dFhecS9QPmS3qIocF2aGMC8DCHzQ+hL7jy0E2XFspUz7hw
	NerpEL4Qhb0Kbk3z3cZhrDXMW+/xY2n2z9jDiq58PebuCvXvx3SALRkh8VjZotAKSzauZbqeX9zxP
	8v4ILE2SnMTbb9/dx1kqg1JGzZAqSqbOXLIl391yVfusHmO0hSvpIvlOAmcaHDVhYlComZdTdoaVD
	1P2ZG1AKrvtSlMqGG3KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZcXX-0005SS-Bx; Fri, 15 May 2020 15:46:23 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZcXU-0005Qz-73
 for linux-mediatek@lists.infradead.org; Fri, 15 May 2020 15:46:21 +0000
Received: by mail-wr1-x442.google.com with SMTP id v12so4038151wrp.12
 for <linux-mediatek@lists.infradead.org>; Fri, 15 May 2020 08:46:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=lPv0fJqlxQG4gprE3sO4CgLs7w2wReqSFpy/vnjEOkc=;
 b=JGDlCN/AvOkjkAJv+QuTV6Y3R2j+2rWyAL3UCNUY4B1fyYc0fQzOb39eDYZJ336wrx
 t+P7bF1Yw+0fC9YObkaz+jWNDk3b7dA+irFCOvexLz9nt3eobQ+nDvZj+WkeOhRKKuS/
 /T1EvacpQZ73o9gAto/CP3TkS8eBfJwvcLvjUrbKWxa/kvYLw1DJObO8rub0d82Hp5cN
 KTIh+MJHJPiO77/BesrSlJc0K7MFvmMp7bCDeHuc6QJb3UPr+keL1816FWtpNTPser5c
 8hxMGkr+CBxBSeUWdMZ6U1KQSuU74aDoxSCE/uskBZ77yvg92rJKe5MpZJwnKbc6wdbz
 HDnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=lPv0fJqlxQG4gprE3sO4CgLs7w2wReqSFpy/vnjEOkc=;
 b=WkVymeVMxcQRERJGMcOeJBeUL1Jp8QKkSlLzmK4vg8T3LmU2+6bw5AqLgt9tvWU4XC
 mQSwrhgrvofDMaa0wZUVRdy7SMiHrp3Cx1+4cG00SO0g/NBz2WmX/LwkOAo7E2QtV7FK
 2H/8mcp5IXtL+3FbaWajp9paSMxuSReDF5mL/goSdSBJlg21zxVaQUH0F1IUNtev9kRz
 N7l5MGV9L+3pVmQfBSwQi/ZD3aV6q0q8kRffMIkhu/V6qB0A4K4K17G6FVt1xd6XGM2K
 GRbyKnlry++0Gy5irf0hPiOQMh2NB44AN3iWIuBFiI41Y1Ee1HTKAxQEuwQnUy4wa/Uk
 ZgWQ==
X-Gm-Message-State: AOAM5306Lzir6fCtd+IW5tKTSPNBMbepiRMWRYBRyuy8RN94lYYjmjd5
 dbaVYB53yvHioWWR06gmZVQ=
X-Google-Smtp-Source: ABdhPJwAWU2zEKbR1EC8JifD4zTyC8tBEHBL6CLV8NW0IrJPGZ8w61v1qY00UAG2jIllVrRyBTisnA==
X-Received: by 2002:a5d:6cd1:: with SMTP id c17mr4570342wrc.380.1589557578230; 
 Fri, 15 May 2020 08:46:18 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id v2sm4280062wrn.21.2020.05.15.08.46.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 15 May 2020 08:46:17 -0700 (PDT)
Subject: Re: [PATCH net-next] net: dsa: mt7530: fix VLAN setup
To: DENG Qingfang <dqfext@gmail.com>, netdev@vger.kernel.org
References: <20200515152555.6572-1-dqfext@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <96c4f8d8-0e21-b480-644c-7df520ed0baf@gmail.com>
Date: Fri, 15 May 2020 08:46:13 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200515152555.6572-1-dqfext@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_084620_273293_848B7A16 
X-CRM114-Status: UNSURE (   7.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, riddlariddla@hotmail.com,
 Paul Fertser <fercerpav@gmail.com>, Sean Wang <sean.wang@mediatek.com>,
 Russell King <linux@armlinux.org.uk>, "David S . Miller" <davem@davemloft.net>,
 =?UTF-8?Q?Ren=c3=a9_van_Dorst?= <opensource@vdorst.com>,
 linux-mediatek@lists.infradead.org, Stijn Segers <foss@volatilesystems.org>,
 Szabolcs Hubai <szab.hu@gmail.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Tom James <tj17@me.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org



On 5/15/2020 8:25 AM, DENG Qingfang wrote:
> Allow DSA to add VLAN entries even if VLAN filtering is disabled, so
> enabling it will not block the traffic of existent ports in the bridge
> 
> Signed-off-by: DENG Qingfang <dqfext@gmail.com>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
