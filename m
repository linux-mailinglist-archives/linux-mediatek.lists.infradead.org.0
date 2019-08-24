Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20BCA9BC4C
	for <lists+linux-mediatek@lfdr.de>; Sat, 24 Aug 2019 09:05:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:
	MIME-Version:References:In-Reply-To:Date:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p2Oa+Sq0sLussjwNuQIrFhzyb7FMor5MVe+SkL2Toiw=; b=akbefcvwLnlWp0
	xvOOXtJKuriDNMYykdIDRdoltMKIAWkU7M+P8Jwu4rXqXGZZ0e1zqgCuqylVtz13iQI5XP/RKK+Sc
	jKSeOvhi5z9yqNtcOIAJr2/X2QAHt9mzf+oTsGAjQm3AyfH+8tyNTysnke8U1BbBMUnAUz3s1RURl
	P75B8L/KPY92yEHSvL3ElfTj9a0hkb+bOGT39drGhh5uqqHwpXe9G+Yddyzkukq/FbzZQbja/rUOY
	9aM8rxhFs2ES6Oe1PtlZjwbMJDJ6a7C8p4C6jIQ3hW1fdTuztcAPwYjYFTKC+a4krN2jMnE9zLvuz
	xTGoYp7cJOzlfX1diiow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Q6W-0006sr-2n; Sat, 24 Aug 2019 07:04:53 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Q6P-0006sY-Sh
 for linux-mediatek@lists.infradead.org; Sat, 24 Aug 2019 07:04:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566630280;
 bh=5UoU0VNsGDSbLXmyrdtl+gJpyI+1SUx02Mg0GC9AKWc=;
 h=X-UI-Sender-Class:Date:In-Reply-To:References:Subject:Reply-to:To:
 From;
 b=ZRpUFvw1Po2A1Z6SV8VdCJh9b1YaCxtePLbzl0k92S3bDA3Rw4w6W/rI7ZS8UY3m5
 2pTXr0fe2cJd8zDGmX83V1ybaxfGprU7TiMiXnPtESkVPSBqE7IpXIeVapzBGlfs7m
 YLmNCJm9jPLwT5/rSNLG6RtvZ/7GAHN0exCviW0A=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from frank-bq ([37.60.0.191]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MyKHc-1iQXfP3v4O-00yjoM; Sat, 24
 Aug 2019 09:04:40 +0200
Date: Sat, 24 Aug 2019 09:04:36 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <b5a21908-faee-17d1-ce26-99b941c0fa70@gmail.com>
References: <1566531931-9772-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1566531931-9772-3-git-send-email-hsin-hsiung.wang@mediatek.com>
 <trinity-1f82bff1-535e-47cd-9a2f-8faccb56e356-1566562433314@3c-app-gmx-bs11>
 <e8a918ab-3e7a-b487-db77-df28d56518ce@gmail.com>
 <0A87F427-2D81-412A-9549-09A51A021799@public-files.de>
 <b5a21908-faee-17d1-ce26-99b941c0fa70@gmail.com>
MIME-Version: 1.0
Subject: Re: [BUG] [PATCH v5 02/10] mfd: mt6397: extract irq related code from
 core driver
To: linux-mediatek@lists.infradead.org
From: Frank Wunderlich <frank-w@public-files.de>
Message-ID: <725410A8-8B5B-472A-8904-57B912475783@public-files.de>
X-Provags-ID: V03:K1:SoPEEFIQGzizVI85d0qXwXTUoTJ3YW81ua6f9aVaGMRWAoEzs4D
 JTkvIUmQX/dV3rf7mtwprar3+cz2rQvu/Q58yA6wLykPvBgVQ4/22Fk2xovo577HOFS+Bze
 D9rEU0JnRPUzW86uLpWYeK0RnFP5b1KORKPGAkRuPan2byEKcqINxrm+2vpxaAXGgNNnm6e
 V4ouw+x5e3tROhm9mzuBA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:LPRRbV7VMFQ=:RY15tq6/cBnBLpd6wK0m9U
 96VsuQkK6X66xb7d++jop59+kKEFaP1jZvzjjwhgM+jWlHoV791IMSrmU+Skflq0HXwf/l+ey
 Gr2gzdL9qLSZQL4tief6U7ImqtEEVzkGmWQVVyUqc+EGpGAH6lkx+DniKTFNP2JZ92SbkClnU
 +ZYLarqcNclGRiA+cw4004FY0QuqO14sWmJHMBGgTMBxr8xuA5100o43uedYLlg8UZzC4A4vH
 nXUkh2o6InGvkrxBPivTyP/cBFASaElu7m38m7gDwMGjp/1nepmY1gPj9ABYSJUHNcz9q+nn3
 OknijS7O406qcvdKilo3S/BR55z8tDtBuuoQ4VULdfNHUvGiG1gRvv2Xe0RLhf1zMcLHTnLu5
 jR1Fv+1vFDmU185DeWOYaLtVT18YyuiES6p5fsOAbPh6nzk6tGhciykU0Uz4UK+sI6OiwB42S
 iSNjWL77uo9+Ap/iO5EKkI25bdYpS71ss9ki2CCQ039iisgiFUxfnPaRtkTxDJug1+i+Asfxd
 GrV97CX1wEqcDtJSFgjjNPDnrmZ1DLHOwad9FsyBzCWZj4lT1AFaHoE/T9jmEqGfMRsKxbp7K
 gVC9aeHpp2wUKgwEhsjkkJeNSrwVgdCB5TedpGMhh66RIYxUu3Mpp41agKy2iMpS4//e7Xz0C
 rnclg2g3DA7tCH7lBSClYY8ABjgmIvdQmi6PkzgFhowWeSUnJGSh0WLOu/IrfPeV36+jGI8jM
 El9snhrRvB897ey5v/0fDkgJPhKeKMArDruUgj4Os4rv1xhvm93xsoufIMYNPfvDe+mpqh0uR
 XGjh4XXx2eNKxIl4BODnkEp2dL3w/d0n3Bw7Gzh2mFs5pT9Zj/s8W2p10eo452pO7rHaBMIgu
 EWbI/yWTi23aydSfoIr4LBsPFKZ9fFK8rG25r1fMOXp7uA3/CzmKjHvq2vshxXFOA88HgQHDq
 QRbIuwBBSfHHy6M1bZL26HMqRi+2v0l7kk4iJKVoSAmFQMXUsIe/CArbfVyEoLvRJAJHUeKiI
 ShjhJcFRDvVmiTIMPl5rfL6E/NlkcU9rGmJrw08M5dzMO2LTrCK1aUr6m0NorhlvVcZz2rpJ0
 Vl481QCmjlpo536tJ4NcFyqJ9lW4Gsh/4f9z/OHtijPzzb1mKQdx2uBJ+LZ6U6nPdRykK38xb
 xrN3U=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_000446_229028_A731C939 
X-CRM114-Status: UNSURE (   2.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Reply-To: frank-w@public-files.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SGkKCldpZSBrb21tdCBlcyxkYXNzIGRlciBQYXRjaCBzbyBzY2huZWxsIGluIG5leHQgZ2Vrb21t
ZW4gaXN0PyBJY2ggdmVyc3VjaGUgamEgc2VsYnN0IGRlbiBwb3dlcm9mZiByZWluIHp1IGJla29t
bWVuLGFiZXIgaWNoIHZlcm11dGUgZGFzcyBzaWNoIGRpZSBiZWlkZW4gc2VyaWVuIGdlZ2Vuc2Vp
dGlnIHN0w7ZyZW4uCgpGZWhsZW4gdm9uIGRlciBzZXJpZSBub2NoIG1laHIgcGF0Y2hlcyBvZGVy
IGZsaWVndCBlciB2aWVsbGVpY2h0IHdpZWRlciByYXVzPwoKV2VubiBpY2ggZGFzIHdlaXMga2Fu
biBpY2ggbWVpbmUgcG93ZXJvZmYtUGF0Y2hlcyBzY2hvbm1hbCBhdWYgbmV4dCBhbnBhc3NlbgoK
R3J1w58gRnJhbmsKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1tZWRpYXRlawo=
