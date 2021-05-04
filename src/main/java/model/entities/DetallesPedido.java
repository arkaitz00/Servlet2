package main.java.model.entities;

// default package
// Generated 04-may-2021 10:46:52 by Hibernate Tools 5.2.12.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * DetallesPedido generated by hbm2java
 */
@Entity
@Table(name = "detalles_pedido", catalog = "tienda_online")
public class DetallesPedido implements java.io.Serializable {

	private Integer id;
	private Integer idPedido;
	private Integer idProducto;
	private Float precioUnidad;
	private Integer unidades;
	private Float impuesto;
	private Double total;

	public DetallesPedido() {
	}

	public DetallesPedido(Integer idPedido, Integer idProducto, Float precioUnidad, Integer unidades, Float impuesto,
			Double total) {
		this.idPedido = idPedido;
		this.idProducto = idProducto;
		this.precioUnidad = precioUnidad;
		this.unidades = unidades;
		this.impuesto = impuesto;
		this.total = total;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "id_pedido")
	public Integer getIdPedido() {
		return this.idPedido;
	}

	public void setIdPedido(Integer idPedido) {
		this.idPedido = idPedido;
	}

	@Column(name = "id_producto")
	public Integer getIdProducto() {
		return this.idProducto;
	}

	public void setIdProducto(Integer idProducto) {
		this.idProducto = idProducto;
	}

	@Column(name = "precio_unidad", precision = 12, scale = 0)
	public Float getPrecioUnidad() {
		return this.precioUnidad;
	}

	public void setPrecioUnidad(Float precioUnidad) {
		this.precioUnidad = precioUnidad;
	}

	@Column(name = "unidades")
	public Integer getUnidades() {
		return this.unidades;
	}

	public void setUnidades(Integer unidades) {
		this.unidades = unidades;
	}

	@Column(name = "impuesto", precision = 12, scale = 0)
	public Float getImpuesto() {
		return this.impuesto;
	}

	public void setImpuesto(Float impuesto) {
		this.impuesto = impuesto;
	}

	@Column(name = "total", precision = 22, scale = 0)
	public Double getTotal() {
		return this.total;
	}

	public void setTotal(Double total) {
		this.total = total;
	}

}